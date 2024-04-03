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
            (dev.mkNixago cell.config.process-compose)
            (dev.mkNixago cell.config.redis_queue)
            (dev.mkNixago cell.config.redis_cache)
          ]
          ++ lib.optionals cfg.enableExtraProjectTools [
            (dev.mkNixago configs.cog)
            (dev.mkNixago libcfg.conform {
              data.commit.conventional = {
                types = [
                  "test"
                  "chore"
                  "docs"
                  "bump"
                  "new"
                  "update"
                  "remove"
                  "enable"
                ];
                scopes = lib.subtractLists [
                  "callPackage"
                  "overrideScope"
                  "overrideScope'"
                  "newScope"
                  "appSources"
                  "packages"
                ] (builtins.attrNames pkgs.frappix);
              };
            })
            (dev.mkNixago configs.lefthook)
            (dev.mkNixago configs.treefmt {
              packages = [nixpkgs.ruff];
              data.formatter = {
                ruff = {
                  command = lib.getExe nixpkgs.ruff;
                  includes = ["*.py" "*.pyi"];
                };
                # a convention, see templates
                nix.excludes = ["apps/_pins/*.nix"];
                prettier.excludes = ["apps/_pins/*.json"];
              };
            })
            (dev.mkNixago libcfg.editorconfig cell.config.editorconfig)
            (dev.mkNixago libcfg.mdbook cell.config.mdbook {
              data.book.title = config.name + " Documentation";
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
          packages =
            lib.flatten (lib.catAttrs "packages" cfg.apps)
            ++ [
              pkgs.start-mariadb-for-frappe
              pkgs.fsjd
            ];
          startup = {
            ensure-env-vars = {
              text =
                # bash
                ''
                  if [[ -z "$PRJ_DATA_HOME" ]]; then
                      echo "This shell must be run in an environment conforming to 'PRJ Base Directory Specification'." 1>&2
                      echo "For more info on 'PRJ Base Directory Specification', see: https://github.com/numtide/prj-spec" 1>&2
                      echo "You can use direnv to provide the environment or enter the shell via the 'frx' command which sets the environment at runtime" 1>&2
                     exit 1
                  fi
                '';
              deps = [];
            };
            emplace-folders = {
              text =
                # bash
                ''
                  mkdir -p "$PRJ_DATA_HOME"/{sites,logs,archived}
                  mkdir -p "$PRJ_ROOT/apps"
                '';
              deps = ["ensure-env-vars"];
            };
            emplace-files = {
              text =
                # bash
                ''
                  cat > "$PRJ_DATA_HOME/sites/apps.txt" <<<"${lib.concatStringsSep "\n" appNames}"
                  [[ ! -f "$PRJ_ROOT/patches.txt" ]] && cp -f ${cfg.frappe}/share/patches.txt "$PRJ_ROOT"
                  [[ ! -f "$PRJ_DATA_HOME/sites/common_site_config.json" ]] &&  echo "{}" > "$PRJ_DATA_HOME/sites/common_site_config.json"
                '';
              deps = ["emplace-folders" "ensure-env-vars"];
            };
            emplace-pyenv = {
              text =
                # bash
                ''
                  [[ ! -d "$PRJ_DATA_HOME/pyenv" ]] && {
                     ${lib.getExe python} -m venv "$PRJ_DATA_HOME/pyenv";
                    "$PRJ_DATA_HOME/pyenv/bin/python" -m pip install --quiet --upgrade pip
                  }
                  echo 'import sys; path = "${penv}/${sitePackagesPath}"; path in sys.path and sys.path.remove(path); sys.path.append(path)' > "$PRJ_DATA_HOME/pyenv/${sitePackagesPath}/frappix-prod-deps-fallback.pth"
                '';
              deps = ["emplace-folders" "ensure-env-vars"];
            };
            emplace-apps = {
              text = let
                clone = app:
                # bash
                ''
                  if [[ ! -d "$PRJ_ROOT/apps/${app.pname}" ]]; then
                    git clone --config "diff.fsjd.command=fsjd --git" \
                      --origin upstream ${
                    lib.optionalString (app ? since) ''--shallow-exclude="'' + app.since + ''"''
                  } "${app.pin.src.gitRepoUrl}" \
                      "$PRJ_ROOT/apps/${app.pname}"
                    (
                      cd "$PRJ_ROOT/apps/${app.pname}";
                      mkdir .git/remotes;
                      ${
                    lib.optionalString (app ? upstream) ''echo "${app.upstream}" > .git/remotes/upstream;''
                  }
                      git switch -c custom;
                      (diff -ura $PRJ_ROOT/apps/${app.pname} ${app.src} | patch --strip 4) || true;
                      git add . && git commit -m 'FRAPPIX START' --no-verify --allow-empty --no-gpg-sign
                      yarn --silent || true
                    )
                  fi
                '';
              in ''
                ${lib.concatMapStrings clone (lib.filter (a: a ? pin) cfg.apps)}
              '';
              deps = ["emplace-pyenv" "ensure-env-vars"];
            };
            install-pre-commit = {
              text = let
                install = app:
                # bash
                ''
                  if (
                    [[ ! -f "$PRJ_ROOT/apps/${app.pname}/.git/hooks/pre-commit" ]] &&
                    [[ -f "$PRJ_ROOT/apps/${app.pname}/.pre-commit-config.yaml" ]]
                  ); then
                     relpath="$(realpath --relative-to=`pwd` $PRJ_ROOT/apps/${app.pname})"
                     echo -e "\033[0;32mInstalling $relpath pre-commit hook ...\033[0m" && \
                      (cd $PRJ_ROOT/apps/${app.pname}; pre-commit install --install-hooks;)
                  fi
                '';
              in ''
                ${lib.concatMapStrings install cfg.apps}
              '';
              deps = ["emplace-apps" "ensure-env-vars"];
            };
            pyinstall-apps = {
              text = let
                install = app:
                # bash
                ''
                  if [[ ! -f "$PRJ_DATA_HOME/pyenv/${sitePackagesPath}/${app.pname}.pth" ]]; then
                    relpath="$(realpath --relative-to=`pwd` $PRJ_ROOT/apps/${app.pname})"
                    echo -e "\033[0;32mInstalling $relpath into virtual env ...\033[0m" && \
                    "$PRJ_ROOT/pyenv/bin/python" -m pip install --quiet --upgrade --editable \
                      "$PRJ_ROOT/apps/${app.pname}" --no-cache-dir --no-dependencies
                  fi
                '';
              in ''
                ${lib.concatMapStrings install cfg.apps}
              '';
              deps = ["emplace-apps" "ensure-env-vars"];
            };
            activate-pyenv = {
              text = ''source "$PRJ_DATA_HOME/pyenv/bin/activate"'';
              deps = ["pyinstall-apps" "ensure-env-vars"];
            };
          };
        };
        commands = let
          devPackage = package: {
            category = "development";
            inherit package;
          };
        in [
          (devPackage pkgs.frx)
          (devPackage pkgs.pre-commit)
          (devPackage pkgs.nvfetcher)
          (devPackage pkgs.nvchecker-nix)
          (devPackage pkgs.nodePackages.localtunnel)
          (devPackage pkgs.bench)
          (devPackage pkgs.apps)
          (devPackage pkgs.analyze-prs)
          (devPackage pkgs.yarn)
        ];
      };
    };
  };
}
