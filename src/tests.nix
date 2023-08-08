let
  site = "testproject.local";
  project = "TestProject_f1d719b";

  common-site-config =
    builtins.toFile "commont-site-config.json"
    (builtins.toJSON {
      default_site = lib.replaceStrings ["."] ["_"] site;
      allow_tests = true;
      # fake smtp setting for notification / email tests
      auto_email_id = "test@example.com";
      mail_server = "smtp.example.com";
      mail_login = "test@example.com";
      mail_password = "test";
      # endpoint query tests need to know the endpoint
      host_name = "http://${site}";
      # not sure about these
      monitor = 1;
      server_script_enabled = true;
      redis_queue = "unix:///run/redis-${project}-queue/redis.sock";
      redis_cache = "unix:///run/redis-${project}-cache/redis.sock";
    });

  test-vm = {
    lib,
    pkgs,
    config,
    frappixPkgs,
    ...
  }: let
    cfg = config.services.frappe;
    apps = builtins.toFile "apps" (
      lib.concatMapStringsSep "\n" (app: app.pname) cfg.apps
    );
    test-deps = lib.flatten (lib.catAttrs "test-dependencies" cfg.apps);
    penv-test = cfg.package.pythonModule.buildEnv.override {extraLibs = cfg.apps ++ test-deps;};
  in {
    # loads custom `pkgs`
    imports = [cell.nixos.frappe];
    _file = ./tests.nix;
    config = {
      users.mutableUsers = false;
      networking.firewall.enable = false;
      networking.hosts = {"127.0.0.1" = [site];};
      # setup a complete bench environment at the system level
      environment = {
        etc."${project}/admin-password".text = "admin";
        variables = {
          FRAPPE_STREAM_LOGGING = "true";
          FRAPPE_SITE_ROOT = "${cfg.benchDirectory}/sites";
          FRAPPE_BENCH_ROOT = "${cfg.benchDirectory}";
          PYTHON_PATH = "${penv-test}/${cfg.package.pythonModule.sitePackages}";
        };
        systemPackages =
          cfg.packages
          ++ [
            # use versions defined by frappe passthru
            cfg.package.mariadb
            # used as (`node` from `PATH`) in:
            #   frappe.website.doctype.web_template.test_web_template.TestWebTemplate
            #   frappe.website.doctype.website_theme.test_website_theme.TestWebsiteTheme
            cfg.package.node
            # our custom ultra-slim bench command
            frappixPkgs.bench
            # invalidate assets_json cache on startup
            pkgs.redis
            # /usr/bin/env python (+ the python env) resolution for our mini bench
            penv-test
          ];
        extraInit = ''
          # when the testing backdoor service enters the environment, the frappe systemd services
          # havn't emplaced this folders yet so we create it manually for the linking below
          mkdir -p ${cfg.benchDirectory}/sites
          # required for both, local bench command and systemd services to discover the shared test configuration
          # some tests need it to be writable, e.g. `test_set_global_conf`
          cp     ${common-site-config}                     ${cfg.benchDirectory}/sites/common_site_config.json
          # required also outside the systemd chroot for test runner command to discover assets via the file system
          ln -sf ${cfg.combinedAssets}/share/sites/assets  ${cfg.benchDirectory}/sites
          # required also outside the systemd chroot for test runner command to discover apps that are set-up in this environment
          ln -sf ${apps}                                   ${cfg.benchDirectory}/sites/apps.txt
        '';
      };
      virtualisation = {
        # we don't do any nix build inside the test vm
        writableStore = false;
        cores = 2;
        # diskSize = 8000; # MB
        memorySize = 2048; # MB
        forwardPorts = [
          {
            guest.port = 80;
            host.port = 8000;
          }
        ];
      };
      services.frappe = {
        inherit project;
        enable = true;
        adminPassword = "/etc/${project}/admin-password";
        gunicorn_workers = 1;
        apps = [
          # # combining tests fails some frappe tests
          # cell.pkgs.python310Packages.erpnext
          # cell.pkgs.python310Packages.insight
          # cell.pkgs.python310Packages.gameplan
        ];
        sites = {
          ${site} = {
            domains = [site];
            apps = ["frappe"];
          };
        };
      };
    };
  };

  nixos-lib = import (inputs.nixpkgs + /nixos/lib) {
    inherit (inputs.nixpkgs) system;
  };
  inherit (inputs.nixpkgs) lib;
in {
  frappe = nixos-lib.runTest {
    name = "frappe-test";
    _file = ./tests.nix;
    skipLint = true;
    defaults = test-vm;
    hostPkgs = inputs.nixpkgs;
    # test against stable nixos system packages
    # NOTE: frappixPkgs remains pinned to its own nixpkgs
    #       to avoid breakages until the depdencenty package
    #       builds can be stabilized and / or upstreamed
    node.pkgs = inputs.nixos.legacyPackages;
    nodes = {
      runnerA = {};
      # runnerB = {};
      # runnerC = {};
      # runnerD = {};
    };
    testScript =
      # python
      ''
        def parallel(*fns):
            from threading import Thread
            threads = [ Thread(target=fn) for fn in fns ]
            for t in threads: t.start()
            for t in threads: t.join()

        start_all()
        total_builds = len(machines)

        runnerA.wait_for_unit("${project}.target")

        with subtest("Wait for site to become reachable"):
            for idx, m in enumerate(machines):
                print("Check ", m)
                m.wait_until_succeeds('test $(curl -L -s -o /dev/null -w %{http_code} ${site}) = 200', timeout=10)

        with subtest("Run the unit test suite"):
            for idx, m in enumerate(machines):
                print("bench run-parallel-tests for ", m)
                stdout = m.succeed(f"bench run-parallel-tests --build-number {idx+1} --total-builds {total_builds}")
                print(stdout)
            # parallel([
            #     m.succeed(f"bench run-parallel-tests --build-number {idx+1} --total-builds {total_builds}")
            #     for idx, m in enumerate(machines)
            # ])
      '';
  };
}
