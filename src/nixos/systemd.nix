{
  lib,
  pkgs,
  config,
  frappixPkgs,
  ...
}:
with lib;
with builtins; let
  cfg = config.services.frappe;

  defaultServiceConfig = {
    Type = "simple";

    # so that it can authenticate with mariadb
    User = cfg.project;

    # so that it can read the bench project tree
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
      # "${cfg.combinedAssets}/share/sites/assets/assets.json:${cfg.benchDirectory}/sites/assets/assets.json"
      # "${cfg.combinedAssets}/share/sites/assets/assets-rtl.json:${cfg.benchDirectory}/sites/assets/assets-rtl.json"
    ];
  };

  defaultUnitConfig = {
    PartOf = ["${cfg.project}.target"];
    Requires = ["${cfg.project}-setup.target"];
    After = ["${cfg.project}-setup.target"];
  };

  defaultEnvironment = {
    FRAPPE_STREAM_LOGGING = "1";
    FRAPPE_REDIS_CACHE = "unix://${cfg.redisCacheSocket}";
    FRAPPE_REDIS_QUEUE = "unix://${cfg.redisQueueSocket}";
    FRAPPE_DB_SOCKET = cfg.mariadbSocket;
    FRAPPE_SITE_ROOT = "${cfg.benchDirectory}/sites";
    FRAPPE_BENCH_ROOT = "${cfg.benchDirectory}";
    PYTHON_PATH = "${cfg.penv}/${cfg.package.pythonModule.sitePackages}";
  };

  defaultPath =
    cfg.packages
    ++ [
      pkgs.coreutils
      # use versions defined by frappe passthru
      cfg.package.mariadb
      # our custom ultra-slim bench command
      frappixPkgs.bench
      # invalidate assets_json cache on startup
      pkgs.redis
      # /usr/bin/env python resolution for out mini bench
      cfg.penv
    ];

  apps = toFile "apps" (
    concatMapStringsSep "\n" (app: app.pname) cfg.apps
  );
  sites = let
    encode = name: {apps, ...}: "${name}:${concatStringsSep '','' apps}";
  in
    toFile "sites" (
      concatStringsSep "\n" (mapAttrsToList encode cfg.sites)
    );
in {
  # internal interface

  # implementation
  config.systemd = mkIf (cfg.enable) {
    services = let
      mkWorker = queue: {
        "${cfg.project}-frappe-${queue}-worker" = {
          path = defaultPath;
          environment = defaultEnvironment;
          script = "bench frappe worker --queue ${queue}";
          unitConfig = defaultUnitConfig;
          serviceConfig = defaultServiceConfig;
          description = "Frappe worker ('${queue}' queue) for project: ${cfg.project}";
        };
      };
    in
      {
        "${cfg.project}-frappe-schedule" = {
          path = defaultPath;
          environment = defaultEnvironment;
          script = "bench frappe schedule";
          unitConfig = defaultUnitConfig;
          serviceConfig = defaultServiceConfig;
          description = "Frappe scheduler for project: ${cfg.project}";
        };
        "${cfg.project}-frappe-web" = {
          path = defaultPath;
          environment = defaultEnvironment;
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
              RestrictAddressFamilies = ["AF_UNIX"];
              RuntimeDirectory = removePrefix "/run/" (dirOf cfg.webSocket);
              RuntimeDirectoryMode = 0775;
              PIDFile = "${dirOf cfg.webSocket}/gunicorn.pid";
              ExecReload = "kill -s HUP $MAINPID";
              ExecStop = "kill -s TERM $MAINPID";
              PrivateTmp = true; # gunicorn requires /tmp
            };
          description = "Frappe web server (${toString cfg.gunicorn_workers} workers) for project: ${cfg.project}";
        };
        "${cfg.project}-node-socketio" = {
          environment = {
            FRAPPE_SOCKETIO_UDS = cfg.socketIOSocket;
            FRAPPE_REDIS_QUEUE = "unix://${cfg.redisQueueSocket}";
          };
          # use versions defined by frappe passthru
          path = [cfg.package.node];
          script = "node ${cfg.package.websocket}";
          unitConfig =
            defaultUnitConfig
            // {
              After =
                defaultUnitConfig.After
                ++ [
                  "${cfg.project}-frappe-web.service"
                ];
              Requires =
                defaultUnitConfig.Requires
                ++ [
                  "${cfg.project}-frappe-web.service"
                ];
            };
          serviceConfig =
            defaultServiceConfig
            // {
              RestrictAddressFamilies = ["AF_UNIX"];
              RuntimeDirectory = removePrefix "/run/" (dirOf cfg.socketIOSocket);
              RuntimeDirectoryMode = 0775;
            };
          description = "Frappe websocket for project: ${cfg.project}";
        };
        "${cfg.project}-setup" = {
          path = defaultPath;
          environment = defaultEnvironment;
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

            while IFS=: read -r site apps; do
              IFS=",";  _apps=($apps); IFS=" ";
              adminPassword="$(cat $CREDENTIALS_DIRECTORY/adminPassword)"

              if [[ -d "./$site" ]]; then
                echo "Updating up $site with $apps..."
                bench frappe --site "$site" set-admin-password --logout-all-sessions "$adminPassword"
                bench frappe --site "$site" migrate
                set -x
                IFS=$'\n';
                installed_apps=($(bench frappe --site "$site" list-apps | cut -d " " -f 1));
                apps_to_install=($(echo ''${_apps[@]} ''${installed_apps[@]} | tr ' ' '\n' | sort | uniq -u))
                IFS=" ";
                [[ ! ''${#apps_to_install[@]} -eq 0 ]] && bench frappe --site "$site" install-app ''${apps_to_install[@]}
                set +x
                echo Reached beyond new app install
              else
                echo "Setting up $site with $apps..."
                pwd="$(head -c 80 /dev/urandom | tr -cd 'a-zA-Z0-9' | head -c 16)"

                # Change unix socket auth to password auth
                (
                  echo "ALTER USER '$site'@'localhost' IDENTIFIED BY '$pwd';"
                  echo "FLUSH PRIVILEGES;"
                ) | mysql -N

                bench frappe new-site "$site" \
                  --db-name "$site" \
                  --db-password "$pwd" \
                  --db-socket "${cfg.mariadbSocket}" \
                  --admin-password "$adminPassword" \
                  --no-setup-db
                bench frappe --site "$site" install-app ''${_apps[@]}
              fi
            done <<<$(cat ${sites})
          '';
          description = "Frappe setup for project: ${cfg.project}";
        };
      }
      // (foldl' (acc: queue: acc // (mkWorker queue)) {} cfg.workerQueues);

    targets = {
      ${cfg.project} = {
        # Main Target
        wantedBy = ["multi-user.target"];
        after =
          [
            "network.target"
            "${cfg.project}-setup.target"
            "${cfg.project}-frappe-web.service"
            "${cfg.project}-node-socketio.service"
            "${cfg.project}-frappe-schedule.service"
          ]
          ++ (
            map (scope: "${cfg.project}-frappe-${scope}-worker.service") cfg.workerQueues
          );
        requires =
          [
            "${cfg.project}-setup.target"
            "${cfg.project}-frappe-web.service"
            "${cfg.project}-node-socketio.service"
            "${cfg.project}-frappe-schedule.service"
          ]
          ++ (
            map (scope: "${cfg.project}-frappe-${scope}-worker.service") cfg.workerQueues
          );
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
