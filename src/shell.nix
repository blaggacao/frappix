let
  inherit (inputs.nixpkgs) lib;
  inherit (inputs.std.lib) dev;
in {
  bench = {
    pkgs,
    config,
    frappixPkgs,
    ...
  }: let
    cfg = config.bench;
  in {
    # load our custom `pkgs`
    config._module.args.frappixPkgs = cell.pkgs;
    options = {
      bench = {
        package = lib.mkOption {
          type = lib.types.package;
          default = frappixPkgs.python310Packages.frappe;
          description = lib.mkDoc ''
            The frappe base package to use.
          '';
          example = lib.literalExpression frappixPkgs.python310Packages.frappe;
        };
        apps = lib.mkOption {
          type = with lib.types; listOf package;
          default = [];
          description = lib.mkDoc ''
            Apps that should be set up for this development environment.

            Always includes frappe.
          '';
          example = lib.literalExpression [
            frappixPkgs.python310Packages.erpnext
            frappixPkgs.python310Packages.insight
            frappixPkgs.python310Packages.gameplan
          ];
        };
      };
    };
    config = {
      name = lib.mkDefault "Frappix Shell";
      nixago = [
        (dev.mkNixago cell.config.procfile)
        (dev.mkNixago cell.config.redis_queue)
        (dev.mkNixago cell.config.redis_cache)
      ];

      bench.apps = [cfg.package];

      devshell.startup = {
        load-bench-venv = {
          text = let
            penv = cfg.package.pythonModule.buildEnv.override {extraLibs = cfg.apps;};
          in ''
            echo "${penv}/${cfg.package.pythonModule.sitePackages}" > "$FRAPPE_BENCH_ROOT/env/${pkgs.python3.sitePackages}/zzz-shell-python-env.pth"
            source "$FRAPPE_BENCH_ROOT/env/bin/activate"
          '';
          deps = ["init-bench"];
        };
        init-bench = {
          text = let
            appNames = lib.catAttrs "pname" cfg.apps;
          in ''

            mkdir -p "$FRAPPE_BENCH_ROOT/sites" "$FRAPPE_BENCH_ROOT/apps"
            cat > "$FRAPPE_BENCH_ROOT/sites/apps.txt" <<<"${lib.concatStringsSep "\n" appNames}"

            [[ ! -f "$FRAPPE_BENCH_ROOT/patches.txt" ]] && cp -f ${cfg.package}/share/patches.txt "$FRAPPE_BENCH_ROOT"
            [[ ! -d "$FRAPPE_BENCH_ROOT/env" ]] && {
               ${lib.getExe pkgs.python3} -m venv "$FRAPPE_BENCH_ROOT/env";
              "$FRAPPE_BENCH_ROOT/env/bin/python" -m pip install --quiet --upgrade pip
            }

            ${
              lib.concatMapStrings
              (app: "if [[ ! -d \"$FRAPPE_BENCH_ROOT/apps/${app.pname}\" ]]; then git clone ${app.url} \"$FRAPPE_BENCH_ROOT/apps/${app.pname}\"; fi;\n")
              cfg.apps
            }

            for app in ${lib.concatStringsSep " " appNames}; do
              [[ ! -f "$FRAPPE_BENCH_ROOT/env/${pkgs.python3.sitePackages}/$app.pth" ]] && \
                echo "Installing $FRAPPE_BENCH_ROOT/apps/$app into virtual env ..." && \
                "$FRAPPE_BENCH_ROOT/env/bin/python" -m pip install --quiet --upgrade --editable \
                  "$FRAPPE_BENCH_ROOT/apps/$app" --no-cache-dir --no-dependencies
              echo "Upgrading $FRAPPE_BENCH_ROOT/apps/$app into virtual env ..." && \
                "$FRAPPE_BENCH_ROOT/env/bin/python" -m pip install --quiet --upgrade --editable \
                  "$FRAPPE_BENCH_ROOT/apps/$app" --no-cache-dir --no-dependencies
              if [[ ! -f "$FRAPPE_BENCH_ROOT/apps/$app/.git/hooks/pre-commit" ]] && [[ -f "$FRAPPE_BENCH_ROOT/apps/$app/.pre-commit-config.yaml" ]]; then
                (cd $FRAPPE_BENCH_ROOT/apps/$app; pre-commit install --install-hooks;)
              fi
            done
          '';
          deps = [];
        };
      };

      env = let
        setEnv = name: eval: {inherit name eval;};
      in [
        (setEnv "MYSQL_HOME"
          "$PRJ_DATA_HOME/mysql")
        (setEnv "MYSQL_UNIX_PORT"
          "$PRJ_RUNTIME_DIR/mysql.sock")
        (setEnv "FRAPPE_BENCH_ROOT"
          "$PRJ_ROOT/bench")
        (setEnv "FRAPPE_SITES_ROOT"
          "$FRAPPE_BENCH_ROOT/sites")
        (setEnv "FRAPPE_APPS_ROOT"
          "$FRAPPE_BENCH_ROOT/apps")
        {
          name = "PYTHONUNBUFFERED";
          value = true;
        }
        {
          name = "DEV_SERVER";
          value = true;
        }
      ];

      devshell.packages =
        [
          pkgs.redis
          # use versions defined by frappe passthru
          cfg.package.node
          cfg.package.mariadb
        ]
        ++ lib.flatten (lib.catAttrs "packages" cfg.apps);

      commands = let
        devPackage = package: {
          category = "development";
          inherit package;
        };
      in [
        (devPackage pkgs.pre-commit)
        (devPackage pkgs.overmind)
        (devPackage pkgs.nodePackages.localtunnel)
        (devPackage frappixPkgs.frappix)
        (devPackage frappixPkgs.bench)
        (devPackage frappixPkgs.apps)
        (devPackage frappixPkgs.fsjd)
        (devPackage frappixPkgs.start-mariadb-for-frappe)
      ];
    };
  };
}
