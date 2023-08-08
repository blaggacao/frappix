{
  lib,
  pkgs,
  config,
  frappixPkgs,
  ...
}:
with lib; let
  cfg = config.services.frappe;
  mkInternal = mkOption {
    internal = true;
    type = types.raw;
  };
in {
  #
  # Interface
  #
  options = {
    services.frappe = {
      enable = mkEnableOption (mdDoc "frappe");

      package = mkOption {
        type = types.package;
        default = frappixPkgs.python310Packages.frappe;
        description = mkDoc ''
          The frappe base package to use.
        '';
        example = literalExpression frappixPkgs.python310Packages.frappe;
      };

      project = mkOption {
        type = types.str;
        description = mdDoc ''
          Name of the project.

          Creates users and home and installs the framework
          and specified applications into it.
        '';
        example = literalExpression "bench";
      };

      apps = mkOption {
        type = with types; listOf package;
        default = [];
        description = mkDoc ''
          Apps that should be set up for this server environment.

          Always includes frappe.
        '';
        example = literalExpression [
          frappixPkgs.python310Packages.erpnext
          frappixPkgs.python310Packages.insight
          frappixPkgs.python310Packages.gameplan
        ];
      };

      sites = mkOption {
        type = with types;
          attrsOf (submodule {
            options = {
              domains = mkOption {type = with types; listOf str;};
              apps = mkOption {type = with types; listOf str;};
            };
          });
        example = literalExpression {
          "mylocal-site-folder" = {
            domains = [
              "my-public-domain.tld"
              "my-local-area-domain.local"
            ];
            apps = [
              "frappe"
              "erpnext"
            ];
          };
        };
        description = mdDoc ''
          Domain to site mapping.
        '';
        # sanitize our future database names
        apply = mapAttrs' (site: nameValuePair (replaceStrings ["."] ["_"] site));
      };

      adminPassword = mkOption {
        type = types.path;
        default = "/run/${cfg.project}/admin-password.secret";
        example = literalExpression "/run/${cfg.project}/admin-password.secret";
        description = mdDoc ''
          Path to the admin password file on the host machine.
        '';
      };

      /*
      Shared server config.
      */

      http_timeout = mkOption {
        type = types.int;
        default = 120;
      };
      gunicorn_max_requests = mkOption {
        type = types.int;
        default =
          if cfg.gunicorn_workers == 1
          then 0
          else 5000;
        defaultText = literalExpression ''
          # If there's only one worker then random restart can
          # cause spikes in response times and can be annoying.
          # Hence not enabled by default if only 1 worker.
          if cfg.gunicorn_workers == 1 then 0 else 5000
        '';
      };
      gunicorn_workers = mkOption {
        type = types.int;
        description = mkDoc ''
          Set usually to number of CPUs * 2 + 1.
          https://docs.gunicorn.org/en/latest/design.html#how-many-workers
        '';
      };
      workerQueues = mkOption {
        type = with types; listOf str;
        description = mkDoc ''
          Set additional worker queues besides the builtin queues:
          "short", "default" & "long"
        '';
        default = [];
      };

      /*
      Internal interface used in the nginx & systemd implementations
      */
      webSocket = mkInternal;
      socketIOSocket = mkInternal;
      redisCacheSocket = mkInternal;
      redisQueueSocket = mkInternal;
      mariadbSocket = mkInternal;
      benchDirectory = mkInternal;
      combinedAssets = mkInternal;
      penv = mkInternal;
      packages = mkInternal;
    };
  };

  #
  # Implementation
  #
  config = mkIf (cfg.enable) {
    users = {
      users.${cfg.project} = {
        isSystemUser = true;
        group = cfg.project;
      };
      groups.${cfg.project} = {};
    };

    systemd.targets = {
      "${cfg.project}-redis" = let
        redisName = t: "redis-" + t; # matches implementation in services.redis
      in {
        wants = [
          (redisName "${cfg.project}-cache.service")
          (redisName "${cfg.project}-queue.service")
        ];
      };
    };

    networking.firewall.allowedTCPPorts = [80];

    services = {
      # module builtin values
      frappe.apps = [cfg.package];
      frappe.workerQueues = ["short" "default" "long"];

      # backfill internal interface
      # - well-known (socket) paths
      frappe.mariadbSocket = "/run/mysqld/mysqld.sock";
      frappe.redisQueueSocket = "/run/redis-${cfg.project}-queue/redis.sock";
      frappe.redisCacheSocket = "/run/redis-${cfg.project}-cache/redis.sock";
      frappe.webSocket = "/run/${cfg.project}/web/gunicorn.socket";
      frappe.socketIOSocket = "/run/${cfg.project}/ws/socketIO.socket";
      frappe.benchDirectory = "/var/lib/${cfg.project}";
      # - preprocessed inputs
      frappe.combinedAssets = frappixPkgs.mkFrappeAssets (catAttrs "frontend" cfg.apps);
      frappe.penv = cfg.package.pythonModule.buildEnv.override {extraLibs = cfg.apps;};
      frappe.packages = flatten (catAttrs "packages" cfg.apps);

      # setup redis service
      redis = {
        vmOverCommit = true;
        servers."${cfg.project}-cache" = {
          bind = null; # only use unix socket
          user = cfg.project;
          enable = true;
          appendOnly = true;
          save = [];
          settings = {
            maxmemory = "794mb";
            maxmemory-policy = "allkeys-lru";
          };
        };
        servers."${cfg.project}-queue" = {
          bind = null; # only use unix socket
          enable = true;
          user = cfg.project;
        };
      };

      # setup mysql service + project user, site databases & site users
      mysql = {
        enable = true;
        package = pkgs.mariadb;
        ensureDatabases = attrNames cfg.sites;
        ensureUsers =
          [
            # Root connection for this project
            {
              name = cfg.project;
              ensurePermissions =
                mapAttrs' (site: _: nameValuePair "${site}.*" "ALL PRIVILEGES") cfg.sites
                // {
                  # the root connection needs to manage the databases and user
                  "*.*" = "CREATE USER, RELOAD";
                };
            }
          ]
          # create database users and grant them priviliges with socket auth
          # they must be manually switched to password auth in oneshot setup service
          ++ (mapAttrsToList (site: _: {
              name = site;
              ensurePermissions = {"${site}.*" = "ALL PRIVILEGES";};
            })
            cfg.sites);
      };
    };
  };
}
