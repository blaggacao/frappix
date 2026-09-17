let
  inherit (inputs) nixpkgs;
  inherit (inputs.cells.src) pkgs nixos;
  inherit (inputs.nixpkgs) lib;

  project = "TestProject";
  nixos-lib = import (nixpkgs + /nixos/lib) {inherit (nixpkgs) system;};

  test-certificates = pkgs.runCommandLocal "test-certificates" {} ''
    mkdir -p $out
    echo insecure-root-password > $out/root-password-file
    echo insecure-intermediate-password > $out/intermediate-password-file
    ${lib.getExe pkgs.step-cli} certificate create "Root CA" $out/root_ca.crt $out/root_ca.key \
      --password-file=$out/root-password-file --profile root-ca
    ${lib.getExe pkgs.step-cli} certificate create "Intermediate CA" \
      $out/intermediate_ca.crt $out/intermediate_ca.key \
      --password-file=$out/intermediate-password-file --ca-password-file=$out/root-password-file \
      --profile intermediate-ca --ca $out/root_ca.crt --ca-key $out/root_ca.key
  '';

  # Without this, bench exits with `0` regardless of tests failing
  benchCIVar = "CI=1";
in
  lib.genAttrs' (lib.range 1 32) (nodeCount: let
    name = "with-${lib.strings.fixedWidthNumber 2 nodeCount}-containers";
  in {
    inherit name;
    value =
      (nixos-lib.runTest {
        name = "frappe-test-nixos-${name}";
        hostPkgs = pkgs;
        defaults = {
          nixpkgs = {inherit pkgs;};
        };
        containers =
          {
            caserver = nixosArgs: {
              environment.etc.password-file.source = "${test-certificates}/intermediate-password-file";
              services.step-ca = {
                enable = true;
                port = 8443;
                address = "[::]";
                openFirewall = true;
                intermediatePasswordFile = "/etc/${nixosArgs.config.environment.etc.password-file.target}";
                settings = {
                  dnsNames = ["caserver"];
                  root = "${test-certificates}/root_ca.crt";
                  crt = "${test-certificates}/intermediate_ca.crt";
                  key = "${test-certificates}/intermediate_ca.key";
                  db = {
                    type = "badger";
                    dataSource = "/var/lib/step-ca/db";
                  };
                  authority = {
                    provisioners = [
                      {
                        type = "ACME";
                        name = "acme";
                      }
                    ];
                  };
                };
              };
            };
          }
          // lib.genAttrs' (lib.range 0 (nodeCount - 1)) (n: {
            name = "runner${toString n}";
            value = nixosArgs: {
              imports = [nixos.frappix];

              security = {
                acme = {
                  defaults = {
                    server = "https://caserver:8443/acme/acme/directory";
                    email = "root@example.org";
                  };
                  acceptTerms = true;
                };

                pki.certificateFiles = ["${test-certificates}/root_ca.crt"];
              };
              networking.firewall.allowedTCPPorts = [
                80
              ];

              systemd.services."${nixosArgs.config.services.frappe.project}-config-setup" = {
                unitConfig.AssertPathIsReadWrite = lib.mkForce null;
                script = let
                  settingsFormat = pkgs.formats.json {};
                  commonSiteConfigFile = settingsFormat.generate "common_site_config.json" nixosArgs.config.services.frappe.commonSiteConfig;
                in
                  lib.mkForce
                  # bash
                  ''
                    set -euo pipefail
                    # some tests need it to be writable, e.g. `test_set_global_conf`
                    cp -f ${commonSiteConfigFile} ./common_site_config.json
                    chmod 775 ./common_site_config.json
                  '';
              };

              services = {
                frappe = {
                  inherit project;
                  enable = true;
                  adminPassword = "/etc/${nixosArgs.config.services.frappe.project}/admin-password";
                  gunicorn_workers = 1;
                  includeTestDeps = true;
                  commonSiteConfig = {
                    default_site = nixosArgs.config.networking.hostName;
                    allow_tests = true;
                    # fake smtp setting for notification / email tests
                    auto_email_id = "test@example.com";
                    mail_server = "smtp.example.com";
                    mail_login = "test@example.com";
                    mail_password = "test";
                    server_script_enabled = true;

                    # not sure about these
                    monitor = 1;
                    redis_queue = "unix:///run/redis-${nixosArgs.config.services.frappe.project}-queue/redis.sock";
                    redis_cache = "unix:///run/redis-${nixosArgs.config.services.frappe.project}-cache/redis.sock";
                  };
                  sites.${nixosArgs.config.networking.hostName} = {
                    domains = [nixosArgs.config.networking.hostName];
                    apps = ["frappe"];
                  };
                  environment = {
                    # It seems that system trust does not suffice for Python.
                    # And even though this literally has "CURL" in it, it seems to do the trick for Python 🤷🏼‍♂️
                    CURL_CA_BUNDLE = nixosArgs.config.security.pki.caBundle;
                  };
                };
                nginx.virtualHosts.${nixosArgs.config.networking.hostName}.enableACME = true;
              };

              environment = {
                etc."${nixosArgs.config.services.frappe.project}/admin-password".text = "admin";
                variables.SKIP_TESTS = lib.pipe ./skip.nix [
                  import
                  (map (test: test.id))
                  (lib.concatStringsSep ",")
                ];
              };
            };
          });

        testScript =
          # python
          ''
            from concurrent.futures import ThreadPoolExecutor, as_completed

            caserver.wait_for_unit("step-ca.service")
            test_machines = list(filter(lambda m: m != caserver, machines))
            total_builds = len(test_machines)

            def test(idx, m):
              with subtest(f"{m.name}"):
                m.wait_for_unit("${project}.target")
                m.wait_for_unit(f"acme-{m.name}.service")
                m.wait_until_succeeds(f"test $(curl -v -L -o /dev/null -w %{{http_code}} {m.name}) = 200")
                pid = m.succeed("systemctl show -p MainPID --value ${project}-web.service").strip()

                stdout = m.succeed(f"${benchCIVar} nsenter --target {pid} --mount bench --verbose run-parallel-tests --build-number {idx+1} --total-builds {total_builds}")

                print(stdout)

            executor = ThreadPoolExecutor()
            node_tasks = [executor.submit(test, idx, m) for idx, m in enumerate(test_machines)]

            for task in as_completed(node_tasks):
              task.result()
          '';
      })
      // {
        meta.description = "Run bench tests in parallel across ${toString nodeCount} containers";
      };
  })
