{
  inputs,
  cell,
}: let
  inherit (inputs) nixpkgs;
  inherit (inputs.nixpkgs) lib;
  inherit (inputs.std.lib) dev cfg;
  inherit (inputs.std.data) configs;
  inherit (builtins) toJSON;
  libcfg = cfg;
in {
  bench = {
    meta.description = "The main frappix shell module";
    __functor = _: {
      pkgs,
      config,
      frappix,
      ...
    }: let
      cfg = config.bench;
      penv = cfg.frappe.pythonModule.buildEnv.override {extraLibs = cfg.apps;};
      python = cfg.frappe.pythonModule;
      sitePackagesPath = python.sitePackages;
      appNames = lib.catAttrs "pname" cfg.apps;
    in {
      # load our custom `pkgs`
      config._module.args = {
        inherit (config) pkgs;
        inherit (config.pkgs) frappix;
      };
      options = {
        pkgs = lib.mkOption {
          type = lib.types.pkgs;
          description = lib.mkDoc ''
            The package set to use. Must contain a .frappix namespace with the available frappe apps.
          '';
        };
        bench = {
          frappe = lib.mkOption {
            type = lib.types.package;
            default = frappix.frappe;
            description = lib.mkDoc ''
              The frappe base package to use.
            '';
            example = lib.literalExpression frappix.frappe;
          };
          apps = lib.mkOption {
            type = with lib.types; listOf package;
            default = [];
            description = lib.mkDoc ''
              Apps that should be set up for this development environment.

              Always includes frappe.
            '';
            example = lib.literalExpression [
              frappix.erpnext
              frappix.insight
              frappix.gameplan
            ];
          };
          enableExtraProjectTools = lib.mkEnableOption "Enable extra repository tooling";
        };
      };
      config = {
        name = lib.mkDefault "Frappix Shell";
        nixago =
          [
            (dev.mkNixago cell.config.procfile)
            (dev.mkNixago cell.config.redis_queue)
            (dev.mkNixago cell.config.redis_cache)
          ]
          ++ lib.optionals cfg.enableExtraProjectTools [
            ((dev.mkNixago libcfg.cog) configs.cog {
              data = {
                repository = "";
                owner = "";
                remote = "";
              };
            })
            ((dev.mkNixago libcfg.conform) {
              data.commit.conventional = {
                types = [
                  "test"
                  "perf"
                  ""
                ];
                scopes = [];
              };
            })
            ((dev.mkNixago libcfg.lefthook) configs.lefthook)
            ((dev.mkNixago libcfg.treefmt) configs.treefmt {
              packages = [nixpkgs.ruff];
              data.formatter = {
                ruff = {
                  command = lib.getExe nixpkgs.ruff;
                  includes = ["*.py" "*.pyi"];
                };
                # a convention, see templates
                nix.excludes = ["apps/_pins/generated.nix"];
                prettier.excludes = ["apps/_pins/generated.json"];
              };
            })
            ((dev.mkNixago libcfg.editorconfig) cell.config.editorconfig)
            ((dev.mkNixago libcfg.mdbook) cell.config.mdbook {
              data.book.title = cfg.name + " Documentation";
            })
          ];

        bench.apps = [cfg.frappe];

        env = let
          setEnv = name: eval: {inherit name eval;};
        in [
          (setEnv "MYSQL_HOME" "$PRJ_DATA_HOME/mysql")
          (setEnv "MYSQL_UNIX_PORT" "$PRJ_RUNTIME_DIR/mysql.sock")
          (setEnv "FRAPPE_BENCH_ROOT" "$PRJ_ROOT")
          (setEnv "FRAPPE_SITES_ROOT" "$PRJ_DATA_HOME/sites")
          (setEnv "FRAPPE_APPS_ROOT" "$PRJ_ROOT/apps")
          {
            name = "FRAPPE_DISABLED_COMMANDS";
            value = toJSON [
              "new-site"
              "drop-site"
              # "install-app"
              "browse"
              "ngrok"
              "migrate-to"
              "serve"
              "schedule"
              "watch"
              "worker"
              "worker-pool"
            ];
          }
          {
            name = "PYTHONUNBUFFERED";
            value = true;
          }
          {
            name = "DEV_SERVER";
            value = true;
          }
        ];

        devshell = {
          packages = lib.flatten (lib.catAttrs "packages" cfg.apps);
          startup = {
            emplace-folders = {
              text = ''
                mkdir -p "$PRJ_DATA_HOME"/{sites,logs}
                mkdir -p "$PRJ_ROOT/apps"
              '';
              deps = [];
            };
            emplace-files = {
              text = ''
                [[ ! -f "$PRJ_ROOT/sites/apps.txt" ]] && cat > "$PRJ_DATA_HOME/sites/apps.txt" <<<"${lib.concatStringsSep "\n" appNames}"
                [[ ! -f "$PRJ_ROOT/patches.txt" ]] && cp -f ${cfg.frappe}/share/patches.txt "$PRJ_ROOT"
              '';
              deps = ["emplace-folders"];
            };
            emplace-pyenv = {
              text = ''
                [[ ! -d "$PRJ_DATA_HOME/pyenv" ]] && {
                   ${lib.getExe python} -m venv "$PRJ_DATA_HOME/pyenv";
                  "$PRJ_DATA_HOME/pyenv/bin/python" -m pip install --quiet --upgrade pip
                }
                echo "${penv}/${sitePackagesPath}" > "$PRJ_DATA_HOME/pyenv/${sitePackagesPath}/zzz-shell-python-env.pth"
              '';
              deps = ["emplace-folders"];
            };
            emplace-apps = {
              text = let
                clone = app: ''
                  if [[ ! -d "$PRJ_ROOT/apps/${app.pname}" ]]; then
                    # git clone --branch {app.src.rev} --depth 1  {app.src.gitRepoUrl} "$PRJ_ROOT/apps/${app.pname}"
                    cp -r --no-preserve=all ${app.src} "$PRJ_ROOT/apps/${app.pname}"
                    # chmod -R 755 "$PRJ_ROOT/apps/${app.pname}/.git"
                    (
                      cd "$PRJ_ROOT/apps/${app.pname}";
                      git restore --staged .
                      find . -type f -iname "*.orig" -delete
                      git config core.fileMode false
                      git add .
                      git commit -m "FRAPPIX START" --no-verify --allow-empty --no-gpg-sign
                      git switch -c "custom"
                      git remote add upstream ${app.src.src.gitRepoUrl}
                      yarn --silent || true
                    )
                    relpath="$(realpath --relative-to=`pwd` $PRJ_ROOT/apps/${app.pname})"
                    if (
                      [[ ! -f "$PRJ_ROOT/apps/${app.pname}/.git/hooks/pre-commit" ]] &&
                      [[ -f "$PRJ_ROOT/apps/${app.pname}/.pre-commit-config.yaml" ]]
                    ); then
                       echo -e "\033[0;32mInstalling $relpath pre-commit hook ...\033[0m" && \
                        (cd $PRJ_ROOT/apps/${app.pname}; pre-commit install --install-hooks;)
                    fi
                    echo -e "\033[0;32mInstalling $relpath into virtual env ...\033[0m" && \
                    "$PRJ_ROOT/pyenv/bin/python" -m pip install --quiet --upgrade --editable \
                      "$PRJ_ROOT/apps/${app.pname}" --no-cache-dir --no-dependencies
                  fi
                '';
              in ''
                ${lib.concatMapStrings clone cfg.apps}
              '';
              deps = ["emplace-pyenv"];
            };
            activate-pyenv = {
              text = ''source "$PRJ_DATA_HOME/pyenv/bin/activate"'';
              deps = ["emplace-apps"];
            };
          };
        };
        commands = let
          devPackage = package: {
            category = "development";
            inherit package;
          };
        in [
          (devPackage pkgs.pre-commit)
          (devPackage pkgs.overmind)
          (devPackage pkgs.nvfetcher)
          (devPackage pkgs.nodePackages.localtunnel)
          (devPackage pkgs.frappix-tool)
          (devPackage pkgs.bench)
          (devPackage pkgs.apps)
          (devPackage pkgs.fsjd)
          (devPackage pkgs.start-mariadb-for-frappe)
        ];
      };
    };
  };
}
