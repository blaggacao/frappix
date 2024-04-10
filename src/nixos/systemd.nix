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
      mkMaybeSiteMigrate = site: data: let
        domain = head data.domains;
        scheme =
          if config.services.nginx.virtualHosts.${site}.forceSSL
          then "https"
          else "http";
      in
        nameValuePair "${cfg.project}-${site}-migrate" {
          path = defaultPath;
          environment =
            cfg.environment
            // {
              FRAPPE_STREAM_LOGGING = null;
            };
          serviceConfig =
            defaultServiceConfig
            // {
              Type = "oneshot";
              RemainAfterExit = true;
              LoadCredential = "adminPassword:${cfg.adminPassword}";
              # need to set site config
              ReadWritePaths = "${cfg.benchDirectory}/sites/${site}";
            };
          # site initiation against database
          requiredBy = ["${cfg.project}-setup-${site}.target"];
          before = ["${cfg.project}-setup-${site}.target"];
          requires = ["mysql.service" "${cfg.project}-config-setup.service"];
          after = ["mysql.service" "${cfg.project}-config-setup.service"];
          unitConfig = {
            ConditionPathIsDirectory = "${cfg.benchDirectory}/sites/${site}";
            PartOf = ["${cfg.project}-setup-${site}.target"];
          };
          script = ''
            set -euo pipefail

            # inform workers about the domain associated with this site
            bench frappe --site "${site}" set-config host_name "${scheme}://${domain}"

            adminPassword="$(cat $CREDENTIALS_DIRECTORY/adminPassword)"

            echo "Migrating ${site} with ..."
            bench frappe --site "${site}" set-admin-password --logout-all-sessions "$adminPassword"
            bench frappe --site "${site}" migrate
          '';
          description = "Frappe migrate site (${site}) for project: ${cfg.project}";
        };
      mkMaybeSiteInstall = site: data: let
        domain = head data.domains;
        scheme =
          if config.services.nginx.virtualHosts.${site}.forceSSL
          then "https"
          else "http";
        site_db = replaceStrings ["."] ["_"] site;
      in
        nameValuePair "${cfg.project}-${site}-install" {
          path = defaultPath;
          environment =
            cfg.environment
            // {
              FRAPPE_STREAM_LOGGING = null;
            };
          serviceConfig =
            defaultServiceConfig
            // {
              Type = "oneshot";
              RemainAfterExit = true;
              LoadCredential = "adminPassword:${cfg.adminPassword}";
              # need to create new sites
              ReadWritePaths = "${cfg.benchDirectory}/sites";
            };
          # site initiation against database
          requires = ["mysql.service" "${cfg.project}-config-setup.service"];
          after = ["mysql.service" "${cfg.project}-config-setup.service"];
          requiredBy = ["${cfg.project}-setup-${site}.target"];
          before = ["${cfg.project}-setup-${site}.target"];
          unitConfig = {
            ConditionPathIsDirectory = "!${cfg.benchDirectory}/sites/${site}";
            PartOf = ["${cfg.project}-setup-${site}.target"];
          };
          script = ''
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
          description = "Frappe install site (${site}) for project: ${cfg.project}";
        };
      mkSiteInstallMissingApps = site: data: let
        inherit (data) apps;
      in
        nameValuePair "${cfg.project}-${site}-install-apps" {
          path = defaultPath;
          environment =
            cfg.environment
            // {
              FRAPPE_STREAM_LOGGING = null;
            };
          serviceConfig =
            defaultServiceConfig
            // {
              Type = "oneshot";
              RemainAfterExit = true;
              LoadCredential = "adminPassword:${cfg.adminPassword}";
            };
          # site initiation against database
          requiredBy = ["${cfg.project}-setup-${site}.target"];
          before = ["${cfg.project}-setup-${site}.target"];
          requires = [
            "mysql.service"
            "${cfg.project}-config-setup.service"
            "${cfg.project}-${site}-migrate.service"
            "${cfg.project}-${site}-install.service"
          ];
          after = [
            "mysql.service"
            "${cfg.project}-config-setup.service"
            "${cfg.project}-${site}-migrate.service"
            "${cfg.project}-${site}-install.service"
          ];
          unitConfig = {
            PartOf = ["${cfg.project}-setup-${site}.target"];
          };
          script = ''
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
          description = "Frappe install missing apps on site (${site}) for project: ${cfg.project}";
        };
      mkWorker = queue: _:
        nameValuePair "${cfg.project}-worker-${queue}" {
          path = defaultPath;
          inherit (cfg) environment;
          script = "bench frappe worker --queue ${queue}";
          requiredBy = ["${cfg.project}-worker.target"];
          before = ["${cfg.project}-worker.target"];
          unitConfig = {
            PartOf = ["${cfg.project}-worker.target"];
            Requires = ["${cfg.project}-setup.target"];
            After = ["${cfg.project}-setup.target"];
          };
          serviceConfig = defaultServiceConfig;
          description = "Frappe worker ('${queue}' queue) for project: ${cfg.project}";
        };
    in
      {
        "${cfg.project}-schedule" = {
          path = defaultPath;
          inherit (cfg) environment;
          script = "bench frappe schedule";
          unitConfig = {
            PartOf = ["${cfg.project}.target"];
            Requires = ["${cfg.project}-setup.target"];
            After = ["${cfg.project}-setup.target"];
          };
          serviceConfig = defaultServiceConfig;
          description = "Frappe scheduler for project: ${cfg.project}";
        };
        "${cfg.project}-web" = {
          path = defaultPath;
          inherit (cfg) environment;
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
          unitConfig = {
            PartOf = ["${cfg.project}.target"];
            Requires = ["${cfg.project}-setup.target"];
            After = ["${cfg.project}-setup.target"];
          };
          serviceConfig =
            defaultServiceConfig
            // {
              RestrictAddressFamilies = ["AF_UNIX" "AF_INET"];
              RuntimeDirectory = removePrefix "/run/" (dirOf cfg.webSocket);
              RuntimeDirectoryMode = 0770;
              UMask = 002;
              PIDFile = "${dirOf cfg.webSocket}/gunicorn.pid";
              ExecReload = "kill -s HUP $MAINPID";
              ExecStop = "kill -s TERM $MAINPID";
              PrivateTmp = true; # gunicorn requires /tmp
            };
          description = "Frappe web server (${toString cfg.gunicorn_workers} workers) for project: ${cfg.project}";
        };
        "${cfg.project}-socketio" = {
          path = defaultPath;
          inherit (cfg) environment;
          script = "node ${cfg.package.src}/socketio.js";
          unitConfig = {
            PartOf = ["${cfg.project}.target"];
            Requires = [
              "${cfg.project}-setup.target"
              "${cfg.project}-web.service"
            ];
            After = [
              "${cfg.project}-setup.target"
              "${cfg.project}-web.service"
            ];
          };
          serviceConfig =
            defaultServiceConfig
            // {
              RestrictAddressFamilies = ["AF_UNIX"];
              RuntimeDirectory = removePrefix "/run/" (dirOf cfg.socketIOSocket);
              RuntimeDirectoryMode = 0770;
              UMask = 002;
            };
          description = "Frappe websocket for project: ${cfg.project}";
        };
        "${cfg.project}-config-setup" = {
          path = defaultPath;
          inherit (cfg) environment;
          serviceConfig =
            defaultServiceConfig
            // {
              Type = "oneshot";
              RemainAfterExit = true;
            };
          wantedBy = ["${cfg.project}-setup.target"];
          before = ["${cfg.project}-setup.target"];
          unitConfig = {
            AssertPathIsReadWrite = "!${cfg.benchDirectory}/sites/common_site_config.json";
            PartOf = ["${cfg.project}-setup.target"];
          };
          script = ''
            set -euo pipefail

            ln -sf ${commonSiteConfigFile} ./common_site_config.json
          '';
          description = "Frappe common site config for project: ${cfg.project}";
        };
      }
      // (mapAttrs' mkWorker cfg.workerQueues)
      // (mapAttrs' mkMaybeSiteMigrate cfg.sites)
      // (mapAttrs' mkMaybeSiteInstall cfg.sites)
      // (mapAttrs' mkSiteInstallMissingApps cfg.sites);

    targets = let
      makeSiteSetupTargets = siteNames:
        listToAttrs (map (site:
          nameValuePair "${cfg.project}-setup-${site}" {
            # Setup Target
            requiredBy = ["${cfg.project}-setup.target"];
            before = ["${cfg.project}-setup.target"];
            unitConfig = {
              # TODO: add notification service
              # OnFailure = ["${cfg.project}-notify-failure.service"];
            };
          })
        siteNames);
    in
      {
        ${cfg.project} = {
          # Main Target
          wantedBy = ["multi-user.target"];
          after = [
            "network.target"
            "${cfg.project}-redis.target"
            "${cfg.project}-setup.target"
            "${cfg.project}-worker.target"
            "${cfg.project}-web.service"
            "${cfg.project}-socketio.service"
            "${cfg.project}-schedule.service"
            # workers register too
          ];
          requires = [
            "${cfg.project}-redis.target"
            "${cfg.project}-setup.target"
            "${cfg.project}-worker.target"
            "${cfg.project}-web.service"
            "${cfg.project}-socketio.service"
            "${cfg.project}-schedule.service"
            # workers register too
          ];
          unitConfig = {
            # TODO: add notification service
            # OnFailure = ["${cfg.project}-notify-failure.service"];
          };
        };
        "${cfg.project}-setup" = {};
        "${cfg.project}-worker" = {};
      }
      // (makeSiteSetupTargets (attrNames cfg.sites));
  };
}
