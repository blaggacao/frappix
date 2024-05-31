{
  lib,
  pkgs,
  config,
  ...
}:
with lib;
with builtins; let
  cfg = config.services.frappe;
  settingsFormat = pkgs.formats.json {};
  commonSiteConfigFile = settingsFormat.generate "common_site_config.json" cfg.commonSiteConfig;
  defaultServiceConfig = {
    Type = "simple";

    # so that it can authenticate with mariadb
    User = cfg.project;

    # so that it can read the bench project tree and nginx can access
    Group = cfg.project;

    # Expands to /var/lib/${cfg.project}/{site,archived}, see: 'man 5 systemd.exec'
    StateDirectory = [
      "${cfg.project}/sites"
      "${cfg.project}/archived"
      "${cfg.project}/config" # for frappe global.lock
      "${cfg.project}/logs" # for monitor logs
      "${cfg.project}/downloads" # for downloading eg ML models
    ];
    # Expands to /var/lib/${cfg.project}
    WorkingDirectory = "%S/${cfg.project}/sites";

    ProtectSystem = "strict";

    BindReadOnlyPaths = [
      # static shared data
      "${apps}:${cfg.benchDirectory}/sites/apps.txt"
      "${cfg.package}/share/patches.txt:${cfg.benchDirectory}/patches.txt"
      "${cfg.combinedAssets}/share/sites/assets:${cfg.benchDirectory}/sites/assets" # because lazy loading via `frappe.client.get_js`
      "${cfg.combinedAssets}/share/apps:${cfg.benchDirectory}/apps" # because dynamic website theme generator
    ];
  };

  defaultPath =
    cfg.packages
    ++ [
      pkgs.jq
      pkgs.coreutils
      # our custom ultra-slim bench command
      pkgs.bench
      # /usr/bin/env python resolution for out mini bench
      cfg.penv
    ];

  apps = toFile "apps" (
    concatMapStringsSep "\n" (app: app.pname) cfg.apps
  );
in {
  # internal interface

  # implementation
  config.systemd = mkIf (cfg.enable) {
    services = let
      # ------
      # Site Config Service: ensuring common_site_config.json
      # -----
      siteConfig = {
        "${cfg.project}-config-setup" = {
          description = "${cfg.project}: ensuring frappe common_site_config.json";
          path = defaultPath;
          inherit (cfg) environment;
          serviceConfig =
            defaultServiceConfig
            // {
              Type = "oneshot";
              # RemainAfterExit = true;
            };
          requiredBy = ["${cfg.project}-config.target"];
          partOf = ["${cfg.project}-config.target"]; # ensures restart / stop
          unitConfig = {
            AssertPathIsReadWrite = "!${cfg.benchDirectory}/sites/common_site_config.json";
          };
          script = ''
            set -euo pipefail

            ln -sf ${commonSiteConfigFile} ./common_site_config.json
          '';
        };
      };

      # ------
      # Main Target: web, socketio, scheduler
      # -----
      mainTarget = let
        path = defaultPath;
        inherit (cfg) environment;
        requiredBy = ["${cfg.project}.target"];
        partOf = ["${cfg.project}.target"]; # ensures restart / stop
        wants = ["${cfg.project}-config.target"];
        after = ["${cfg.project}-config.target"];
      in {
        "${cfg.project}-schedule" = {
          description = "${cfg.project}: frappe scheduler";
          inherit path environment requiredBy partOf wants after;
          script = "bench frappe schedule";
          serviceConfig = defaultServiceConfig;
        };
        "${cfg.project}-web" = {
          description = "${cfg.project}: frappe web server (${toString cfg.gunicorn_workers} workers)";
          inherit path environment requiredBy partOf wants after;
          script = concatStringsSep " " [
            "python -m gunicorn"
            "--bind unix:${cfg.webSocket}"
            "--pid ${dirOf cfg.webSocket}/gunicorn.pid"
            "--workers ${toString cfg.gunicorn_workers}"
            "--timeout ${toString cfg.http_timeout}"
            "--max-requests ${toString cfg.gunicorn_max_requests}"
            "--max-requests-jitter ${toString (ceil (cfg.gunicorn_max_requests / 10.0))}"
            "frappe.app:application"
            "--preload"
          ];
          serviceConfig =
            defaultServiceConfig
            // {
              RestrictAddressFamilies = ["AF_UNIX" "AF_INET"];
              RuntimeDirectory = removePrefix "/run/" (dirOf cfg.webSocket);
              RuntimeDirectoryMode = 0770;
              UMask = 002;
              PIDFile = "${dirOf cfg.webSocket}/gunicorn.pid";
              ExecReload = "${pkgs.coreutils}/bin/kill -s  HUP $MAINPID";
              ExecStop = "${pkgs.coreutils}/bin/kill   -s TERM $MAINPID";
              PrivateTmp = true; # gunicorn requires /tmp
            };
        };
        "${cfg.project}-socketio" = {
          description = "${cfg.project}: frappe websocket";
          inherit path environment requiredBy partOf wants after;
          script = "node ${cfg.package.src}/socketio.js";
          # No usefulness of socket if fronted stops or failes abnormally
          bindsTo = ["${cfg.project}-web.service"];
          serviceConfig =
            defaultServiceConfig
            // {
              RestrictAddressFamilies = ["AF_UNIX"];
              RuntimeDirectory = removePrefix "/run/" (dirOf cfg.socketIOSocket);
              RuntimeDirectoryMode = 0770;
              UMask = 002;
            };
        };
      };

      # ------
      # Worker Target: short, default, long & custom queues
      # -----
      workerTarget = let
        args = {
          path = defaultPath;
          inherit (cfg) environment;
          wantedBy = ["${cfg.project}-worker.target"];
          partOf = ["${cfg.project}-worker.target"]; # ensures restart / stop
          wants = ["${cfg.project}-config.target"];
          after = ["${cfg.project}-config.target"];
          serviceConfig = defaultServiceConfig;
          unitConfig = {
            # PartOf = ["${cfg.project}-worker.target"];
            # Requires = ["${cfg.project}-setup.target"];
            # After = ["${cfg.project}-setup.target"];
          };
        };
      in
        mapAttrs' (mkWorker args) cfg.workerQueues;

      # Worker Service Constructor
      mkWorker = args: queue: _:
        nameValuePair "${cfg.project}-worker-${queue}" (args
          // {
            description = "${cfg.project}: frappe worker for '${queue}' queue";
            script = "bench frappe worker --queue ${queue}";
          });

      # ------
      # Setup Target (per site): maybe install | maybe migrate & install apps
      # -----
      setupTarget = let
        args = site: {
          path = defaultPath;
          environment =
            cfg.environment
            // {
              # this is a very uncleadn upstream implementation,
              # but avoids logging SQL DDL statements
              FRAPPE_STREAM_LOGGING = null;
            };
          # don't propagate restarts and stops
          requiredBy = ["${cfg.project}-setup-${site}.target"];
          wants = ["${cfg.project}-config.target"];
          after = ["${cfg.project}-config.target"];
        };
      in
        (mapAttrs' (mkMaybeSiteMigrate args) cfg.sites) # either, if site directory exists
        // (mapAttrs' (mkMaybeSiteInstall args) cfg.sites) # or, if site directory doesn't exist
        // (mapAttrs' (mkSiteInstallMissingApps args) cfg.sites); # finally

      # Setup Services Constructors
      mkMaybeSiteMigrate = args: site: data:
        nameValuePair "${cfg.project}-setup-${site}-migrate" ((args site)
          // {
            description = "${cfg.project} (${site}): migrate";
            serviceConfig =
              defaultServiceConfig
              // {
                Type = "oneshot";
                # RemainAfterExit = true;
                LoadCredential = "adminPassword:${cfg.adminPassword}";
                # need to set site config
                ReadWritePaths = "${cfg.benchDirectory}/sites/${site}";
              };
            unitConfig = {
              ConditionPathIsDirectory = "${cfg.benchDirectory}/sites/${site}";
            };
            script = let
              domain = head data.domains;
              scheme =
                if config.services.nginx.virtualHosts.${site}.forceSSL
                then "https"
                else "http";
            in
              # bash
              ''
                set -euo pipefail

                # inform workers about the domain associated with this site
                bench frappe --site "${site}" set-config host_name "${scheme}://${domain}"

                adminPassword="$(cat $CREDENTIALS_DIRECTORY/adminPassword)"

                count=10
                echo "Migrating ${site} ..."
                while ! bench frappe --site "${site}" ready-for-migration; do
                  if ! (( count )); then
                    echo "Waited for too long, failing ..."
                    exit 1
                  fi
                  echo "Waiting 5 seconds ..."
                  sleep 5
                  (( count-- ))
                done
                bench frappe --site "${site}" set-maintenance-mode on
                bench frappe --site "${site}" set-admin-password "$adminPassword"
                bench frappe --site "${site}" migrate
                bench frappe --site "${site}" set-maintenance-mode off
              '';
          });
      mkMaybeSiteInstall = args: site: data:
        nameValuePair "${cfg.project}-setup-${site}-install" ((args site)
          // {
            description = "${cfg.project} (${site}): install new site";
            serviceConfig =
              defaultServiceConfig
              // {
                Type = "oneshot";
                # RemainAfterExit = true;
                LoadCredential = "adminPassword:${cfg.adminPassword}";
                # need to create new sites
                ReadWritePaths = "${cfg.benchDirectory}/sites";
              };
            unitConfig = {
              ConditionPathIsDirectory = "!${cfg.benchDirectory}/sites/${site}";
            };
            script = let
              domain = head data.domains;
              scheme =
                if config.services.nginx.virtualHosts.${site}.forceSSL
                then "https"
                else "http";
              site_db = replaceStrings ["."] ["_"] site;
            in
              # bash
              ''
                set -euo pipefail

                echo "Setting up ${site} ..."
                pwd="$(head -c 80 /dev/urandom | tr -cd 'a-zA-Z0-9' | head -c 16)"

                echo "Changing nixos default mysql socket auth to password auth for user '${site_db}'..."
                (
                  echo "ALTER USER '${site_db}'@'localhost' IDENTIFIED BY '$pwd';"
                  echo "FLUSH PRIVILEGES;"
                ) | mysql -N -S "${cfg.mariadbSocket}"

                echo "Creating new site ('${site}') with bench..."
                adminPassword="$(cat $CREDENTIALS_DIRECTORY/adminPassword)"
                bench frappe new-site "${site}" \
                  --db-name "${site_db}" \
                  --db-password "$pwd" \
                  --db-socket "${cfg.mariadbSocket}" \
                  --admin-password "$adminPassword" \
                  --verbose \
                  --no-setup-db

                # inform workers about the domain associated with this site
                bench frappe --site "${site}" set-config host_name "${scheme}://${domain}"
              '';
          });
      mkSiteInstallMissingApps = args: site: data:
        nameValuePair "${cfg.project}-setup-${site}-apps" ((args site)
          // {
            description = "${cfg.project} (${site}): install missing apps";
            serviceConfig =
              defaultServiceConfig
              // {
                Type = "oneshot";
                # RemainAfterExit = true;
              };
            requires = [
              "${cfg.project}-setup-${site}-migrate.service"
              "${cfg.project}-setup-${site}-install.service"
            ];
            after = [
              "${cfg.project}-setup-${site}-migrate.service"
              "${cfg.project}-setup-${site}-install.service"
            ];
            script = let
              inherit (data) apps;
            in
              # bash
              ''
                set -euo pipefail

                echo "Check if installed on site: ${concatStringsSep ", " apps} ..."
                readarray -t -d "" installed_apps < <(bench --site ${site} list-apps --format json | jq -r '.${site}[]')
                apps_to_install=($(echo ${concatStringsSep " " apps} ''${installed_apps[@]} | tr ' ' '\n' | sort | uniq -u))
                for iapp in ''${installed_apps[@]}; do
                  for i in ''${!apps_to_install[@]}; do
                    if [[ ''${apps_to_install[i]} = $iapp ]]; then
                      unset 'apps_to_install[i]'
                    fi
                  done
                done
                if [[ ! ''${#apps_to_install[@]} -eq 0 ]]; then
                  echo "Installing ''${apps_to_install[@]} on ${site}..."
                  bench frappe --site "${site}" install-app ''${apps_to_install[@]}
                else
                  echo "All apps already installed."
                fi
              '';
          });
    in
      siteConfig
      // mainTarget
      // workerTarget
      // setupTarget;

    targets = let
      makeSiteSetupTargets = siteNames:
        listToAttrs (map (site:
          nameValuePair "${cfg.project}-setup-${site}" {
            # Setup Target
            wantedBy = ["${cfg.project}-setup.target"];
            unitConfig = {
              # TODO: add notification service
              # OnFailure = ["${cfg.project}-notify-failure.service"];
            };
          })
        siteNames);
    in
      {
        "${cfg.project}-config" = {};
        "${cfg.project}-setup" = {
          requires = [
            "mysql.service"
            "${cfg.project}-config.target"
          ];
        };
        ${cfg.project} = {
          # Main Target
          wantedBy = ["multi-user.target"];
          requires = [
            "mysql.service"
            "${cfg.project}-redis.target"
            "${cfg.project}-config.target"
          ];
          wants = [
            "${cfg.project}-setup.target"
            "${cfg.project}-worker.target"
          ];
          unitConfig = {
            # TODO: add notification service
            # OnFailure = ["${cfg.project}-notify-failure.service"];
          };
        };
        "${cfg.project}-worker" = {};
      }
      // (makeSiteSetupTargets (attrNames cfg.sites));
  };
}
