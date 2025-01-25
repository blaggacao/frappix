{
  lib,
  pkgs,
  config,
  ops,
  ...
}:
with lib; let
  cfg = config.oci.frappix;
  mkInternal = mkOption {
    internal = true;
    type = types.raw;
  };
  apps = builtins.toFile "apps" (
    concatMapStringsSep "\n" (app: app.pname) cfg.apps
  );
in {
  #
  # Interface
  #
  options.oci.frappix = {
    name = mkOption {
      type = types.str;
      description = mdDoc ''
        Name of the image in the form REGISTRY/NAME.

        Tags are hashes and automatically calculated.

        The full image name is accessible under `config.oci.frappix.image.name`
      '';
      example = literalExpression "ghcr.is/myorg/frappix";
    };
    debug = mkEnableOption (mdDoc "make debug image with some extra tools in the environment");
    package = mkOption {
      type = types.package;
      default = pkgs.frappix.frappe;
      description = mkDoc ''
        The frappe base package to use.
      '';
      example = literalExpression pkgs.frappix.frappe;
    };

    apps = mkOption {
      type = with types; listOf package;
      default = [];
      description = mkDoc ''
        Apps that should be installed into this image.

        Always includes frappe.
      '';
      example = literalExpression [
        pkgs.frappix.erpnext
        pkgs.frappix.insight
        pkgs.frappix.gameplan
      ];
    };

    /*
    Internal interface used in the nginx & systemd implementations
    */
    benchDirectory = mkInternal;
    combinedAssets = mkInternal;
    penv = mkInternal;
    packages = mkInternal;
    environment = mkInternal // {type = types.attrs;};

    operable = mkInternal;
    image = mkInternal;
  };

  #
  # Implementation
  #
  config.oci.frappix = {
    apps = [cfg.package];

    # preprocessing
    combinedAssets = pkgs.mkSiteAssets cfg.apps;
    penv = cfg.package.pythonModule.buildEnv.override {extraLibs = cfg.apps;};
    packages = flatten (catAttrs "packages" cfg.apps);

    # invariants for oci
    benchDirectory = "/var/lib/frappix";
    environment = {
      FRAPPE_STREAM_LOGGING = "1";
      FRAPPE_SITES_ROOT = "${cfg.benchDirectory}/sites";
      FRAPPE_BENCH_ROOT = "${cfg.benchDirectory}";
      FRAPPE_SITES_PATH = "${cfg.benchDirectory}/sites";
      FRAPPE_BENCH_PATH = "${cfg.benchDirectory}";
      NODE_PATH = concatMapStringsSep ":" (app: "${cfg.combinedAssets}/share/apps/" + app.pname + "/node_modules") cfg.apps;
      PYTHON_PATH = "${cfg.penv}/${cfg.package.pythonModule.sitePackages}";
    };

    # output attributes
    operable = ops.mkOperable {
      inherit (cfg) package;
      runtimeInputs =
        cfg.packages
        ++ [
          cfg.penv
          # our custom ultra-slim bench command
          pkgs.bench
        ];
      debugInputs = [
        pkgs.netcat
        pkgs.tcpdump
      ];
      runtimeEnv = cfg.environment;
      runtimeScript = let
        # sites dir is a volume, so we can only copy in place during startup
        copyToSitesDir = concatStringsSep "; " [
          # "cp -u ${cfg.benchDirectory}/sites-overlay/* ${cfg.benchDirectory}/sites/"
        ];
        # some reference on workers vs threads:
        # https://medium.com/building-the-system/gunicorn-3-means-of-concurrency-efbb547674b7
        webserver = concatStringsSep " " [
          "python -m gunicorn"
          "--bind 0.0.0.0:8000"
          "frappe.app:application"
          "--preload"
        ];
      in
        # bash
        ''
          ${copyToSitesDir}

          # Check if any arguments are provided
          if [ "$#" -eq 0 ]; then
              exec ${webserver} \
                --timeout=120 \
                --workers=2 \
                --threads=4 \
                --worker-class=gthread \
                --worker-tmp-dir=/dev/shm
          fi

          # Check the first argument
          case "$1" in
              --worker=*)
                  QUEUE="''${1#*=}"
                  exec bench frappe worker --queue "$QUEUE"
                  ;;
              --scheduler)
                  echo "Starting scheduler (no further output). ------"
                  exec bench frappe schedule
                  ;;
              --websocket)
                  exec node "${cfg.package.src}/socketio.js"
                  ;;
              *)
                  exec ${webserver} "$@"
                  ;;
          esac
        '';
    };
    image = ops.mkStandardOCI {
      meta = {
        description = "Frappix OCI image";
      };
      inherit (cfg) operable name;
      config.WorkingDir = "${cfg.benchDirectory}";

      setup = [
        pkgs.coreutils
        # our custom lightweight bench depends on /usr/bin/env
        # link it from the coreutls QoL above
        (ops.mkSetup "links" [] ''
          mkdir -p $out/usr/bin
          ln -s /bin/env $out/usr/bin/env
        '')
        # trick `buildEnv` and prevent $out`${cfg.benchDirectory}` to be a symlink
        (pkgs.runCommand "" {} ''
          mkdir -p $out/${cfg.benchDirectory}
        '')
        # trick `buildEnv` and prevent $out`${cfg.benchDirectory}/sites` to be a symlink
        (pkgs.runCommand "" {} ''
          mkdir -p $out/${cfg.benchDirectory}/sites
        '')
        # trick `buildEnv` and prevent $out`${cfg.benchDirectory}/config` to be a symlink
        (pkgs.runCommand "" {} ''
          mkdir -p $out/${cfg.benchDirectory}/config
        '')
        (pkgs.runCommand "" {} ''
          mkdir -p $out/${cfg.benchDirectory}/config
          touch $out/${cfg.benchDirectory}/.touch
        '')
        # on change: also update systemd
        # frappe expeced runtime paths, akin to Systemd'd BindReadOnlyPaths
        (ops.mkSetup "bench-path-contracts" [
            {
              regex = "${cfg.benchDirectory}/(sites|config).*";
              mode = "0777";
              uname = "nobody";
              gname = "nobody";
              uid = 65534;
              gid = 65534;
            }
          ] ''
            mkdir -p $out/${cfg.benchDirectory}/sites

            ln -s ${cfg.package}/share/patches.txt         $out/${cfg.benchDirectory}/patches.txt

            # because dynamic website theme generator
            ln -s ${cfg.combinedAssets}/share/apps         $out/${cfg.benchDirectory}/apps

            ln -s ${apps}                                  $out/${cfg.benchDirectory}/sites/apps.txt

            # because lazy loading via `frappe.client.get_js
            ln -s ${cfg.combinedAssets}/share/sites/assets $out/${cfg.benchDirectory}/sites/assets
          '')
      ];
    };
  };
}
