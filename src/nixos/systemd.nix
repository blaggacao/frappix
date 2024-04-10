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

  defaultUnitConfig = {
    PartOf = ["${cfg.project}.target"];
    Requires = ["${cfg.project}-setup.target"];
    After = ["${cfg.project}-setup.target"];
  };

  defaultPath =
    cfg.packages
    ++ [
      pkgs.coreutils
      # our custom ultra-slim bench command
      pkgs.bench
      # /usr/bin/env python resolution for out mini bench
      cfg.penv
    ];

  apps = toFile "apps" (
    concatMapStringsSep "\n" (app: app.pname) cfg.apps
  );
  sites = let
    encode = name: {
      apps,
      domains,
    }: "${name}:${concatStringsSep '','' apps}:${head domains}:${
      if config.services.nginx.virtualHosts.${name}.forceSSL
      then "https"
      else "http"
    }";
  in
    toFile "sites" (
      concatStringsSep "\n" (mapAttrsToList encode cfg.sites)
    );
in {
  # internal interface

  # implementation
  config.systemd = mkIf (cfg.enable) {
    services = let
      mkWorker = queue: _:
        nameValuePair "${cfg.project}-worker-${queue}" {
          path = defaultPath;
          inherit (cfg) environment;
          script = "bench frappe worker --queue ${queue}";
          requiredBy = ["${cfg.project}.target"];
          before = ["${cfg.project}.target"];
          unitConfig = defaultUnitConfig;
          serviceConfig = defaultServiceConfig;
          description = "Frappe worker ('${queue}' queue) for project: ${cfg.project}";
        };
    in
      {
        "${cfg.project}-schedule" = {
          path = defaultPath;
          inherit (cfg) environment;
          script = "bench frappe schedule";
          unitConfig = defaultUnitConfig;
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
          unitConfig = defaultUnitConfig;
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
          unitConfig =
            defaultUnitConfig
            // {
              After =
                defaultUnitConfig.After
                ++ [
                  "${cfg.project}-web.service"
                ];
              Requires =
                defaultUnitConfig.Requires
                ++ [
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
        "${cfg.project}-setup" = {
          path = defaultPath;
          inherit (cfg) environment;
          serviceConfig =
            defaultServiceConfig
            // {
              Type = "oneshot";
              RemainAfterExit = true;
              LoadCredential = "adminPassword:${cfg.adminPassword}";
              # need to create new sites
              ReadWritePaths = "${cfg.benchDirectory}/sites";
            };
          # assets map is cached into redis
          # site initiation against database
          unitConfig = {
            PartOf = ["${cfg.project}-setup.target"];
            Requires = [
              "mysql.service"
              "${cfg.project}-redis.target"
            ];
            After = [
              "mysql.service"
              "${cfg.project}-redis.target"
            ];
          };
          script = ''
            set -euo pipefail

            redis-cli -s "${cfg.redisCacheSocket}" del assets_json

            while IFS=: read -r site apps domain scheme; do
              IFS=",";  _apps=($apps); IFS=" ";
              adminPassword="$(cat $CREDENTIALS_DIRECTORY/adminPassword)"

              if [[ -d "./$site" ]]; then
                echo "Updating $site with $apps..."
                bench frappe --site "$site" set-admin-password --logout-all-sessions "$adminPassword"
                bench frappe --site "$site" migrate
                set -x
                IFS=$'\n';
                installed_apps=($(bench frappe --site "$site" list-apps | cut -d " " -f 1));
                apps_to_install=($(echo ''${_apps[@]} ''${installed_apps[@]} | tr ' ' '\n' | sort | uniq -u))
                IFS=" ";
                [[ ! ''${#apps_to_install[@]} -eq 0 ]] && bench frappe --site "$site" install-app ''${apps_to_install[@]}
                set +x
              else
                echo "Setting up $site with $apps..."
                pwd="$(head -c 80 /dev/urandom | tr -cd 'a-zA-Z0-9' | head -c 16)"

                echo "Changing nixos default mysql socket auth to password auth for user '$site'..."
                site_db=''${site//[.]/_}
                (
                  echo "ALTER USER '$site_db'@'localhost' IDENTIFIED BY '$pwd';"
                  echo "FLUSH PRIVILEGES;"
                ) | mysql -N -S "${cfg.mariadbSocket}"

                echo "Creating new site ('$site') with bench..."
                bench frappe new-site "$site" \
                  --db-name "$site_db" \
                  --db-password "$pwd" \
                  --db-socket "${cfg.mariadbSocket}" \
                  --admin-password "$adminPassword" \
                  --verbose \
                  --no-setup-db

                echo "Installing $apps on $site..."
                bench frappe --site "$site" install-app ''${_apps[@]}
              fi
              # inform workers about the domain associated with this site
              bench frappe --site "$site" set-config host_name "$scheme://$domain"
            done <<<$(cat ${sites})
          '';
          description = "Frappe setup for project: ${cfg.project}";
        };
      }
      // (mapAttrs' mkWorker cfg.workerQueues);

    targets = {
      ${cfg.project} = {
        # Main Target
        wantedBy = ["multi-user.target"];
        after = [
          "network.target"
          "${cfg.project}-setup.target"
          "${cfg.project}-web.service"
          "${cfg.project}-socketio.service"
          "${cfg.project}-schedule.service"
        ];
        requires = [
          "${cfg.project}-setup.target"
          "${cfg.project}-web.service"
          "${cfg.project}-socketio.service"
          "${cfg.project}-schedule.service"
        ];
        unitConfig = {
          # TODO: add notification service
          # OnFailure = ["${cfg.project}-notify-failure.service"];
        };
      };
      "${cfg.project}-setup" = {
        # Setup Target
        requires = [
          "${cfg.project}-setup.service"
        ];
        after = [
          "${cfg.project}-setup.service"
        ];
      };
    };
  };
}
