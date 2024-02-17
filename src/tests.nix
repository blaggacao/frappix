let
  site = "testproject.local";
  project = "TestProject";

  sslPath = "/etc/nginx/ssl";

  # minica --domains '*.testproject.local'
  ca = builtins.toFile "ca.crt" ''
    -----BEGIN CERTIFICATE-----
    MIIESjCCArKgAwIBAgIQIXBO2S6MrbNPYiRm/w9LdDANBgkqhkiG9w0BAQsFADB1
    MR4wHAYDVQQKExVta2NlcnQgZGV2ZWxvcG1lbnQgQ0ExJTAjBgNVBAsMHGJsYWdn
    YWNhb0BkYXIgKERhdmlkIEFybm9sZCkxLDAqBgNVBAMMI21rY2VydCBibGFnZ2Fj
    YW9AZGFyIChEYXZpZCBBcm5vbGQpMB4XDTI0MDIwMTAzMDY1NVoXDTI2MDUwMTAy
    MDY1NVowUDEnMCUGA1UEChMebWtjZXJ0IGRldmVsb3BtZW50IGNlcnRpZmljYXRl
    MSUwIwYDVQQLDBxibGFnZ2FjYW9AZGFyIChEYXZpZCBBcm5vbGQpMIIBIjANBgkq
    hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuadc9NfaU3pWx6w7I6GKumfnDf4CpcqJ
    mEw1Betl6nXwIhUyL5Ubl9sB8WfEt31oyXYIgbUD8bpKfQ45andyPk0hDkZzcBtC
    mekr076xw1NQr/zc8Jg6RtMjeNyRw6DiVfcCFp7zL7qxx1dyfai5z9ldIuG/7m99
    sXWLE3Sgt9kkL5dEEKDrvanCIAKn7wegQpgXq3hhEi7fXzLMkEueZjoLjLpSIKCV
    NJlxdW2fSTyvNqD5UUonoy+io3sjX9a9XoZIn/WnPDud4umCirbAAReTqWGxsvD8
    WCEsRGIrl9uVQ+nq416twMWev9iBDi2cRDTBCS8s7pTko43A6qw/ZwIDAQABo3sw
    eTAOBgNVHQ8BAf8EBAMCBaAwEwYDVR0lBAwwCgYIKwYBBQUHAwEwHwYDVR0jBBgw
    FoAUV1//tWJO87/4RwIl6BXNAkELsK8wMQYDVR0RBCowKIITKi50ZXN0cHJvamVj
    dC5sb2NhbIIRdGVzdHByb2plY3QubG9jYWwwDQYJKoZIhvcNAQELBQADggGBAF2b
    7IsYfyUBYMj2+rDE1bcBm4Xhh5bvUMQx/fYmOL7W3kpbtia1w/uS6+OiyidbooTZ
    Y2EXNvQdGb0i6rzpXdlNu0hGLCjux1zsCOodpLUJ01CngAbRfXl9tdoS5zQM0ENj
    xTPjTQDE86XXjUMA+C/xk+AP9bzlwBoQkOyxfDtbyrrjsB1vej65LUfiVPdRr6Zi
    2yI451drt1+JsmJkUwGdv6SfJ6ZTgy1TlEs+MVF7jKDaKH14zqZljtdA9JgvzGnw
    oDp4KUIObU/AlfRaWsWnUp20LAUruDB6gwSLHGS3g/5yrFyROJfumUhubZvJVCZw
    4vSPayxPLMgzRJXkI0mhLeD9YUQgzR/70Yz3pKcnbLcWLv+RX9ltcDu6daayfJAl
    hWaeZEy7M6vQHhCHziUcpVXPa84K6ZAf8XHwANLAGLKL3wv94UkL2m6aB6NNkDW8
    t7aYTZL3n0OPuGtrUqtbyM43hJutjoyX9qoCH4l/48e+rAfLDDc+2cwaz2GZzw==
    -----END CERTIFICATE-----
  '';
  key = builtins.toFile "key.pem" ''
    -----BEGIN PRIVATE KEY-----
    MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQC5p1z019pTelbH
    rDsjoYq6Z+cN/gKlyomYTDUF62XqdfAiFTIvlRuX2wHxZ8S3fWjJdgiBtQPxukp9
    Djlqd3I+TSEORnNwG0KZ6SvTvrHDU1Cv/NzwmDpG0yN43JHDoOJV9wIWnvMvurHH
    V3J9qLnP2V0i4b/ub32xdYsTdKC32SQvl0QQoOu9qcIgAqfvB6BCmBereGESLt9f
    MsyQS55mOguMulIgoJU0mXF1bZ9JPK82oPlRSiejL6KjeyNf1r1ehkif9ac8O53i
    6YKKtsABF5OpYbGy8PxYISxEYiuX25VD6erjXq3AxZ6/2IEOLZxENMEJLyzulOSj
    jcDqrD9nAgMBAAECggEBAIXkhyzp88Jaq/VraGdlHOkdAE1eEUjCjoNxCpiPUbxL
    fHkIMl6QugrF31vcC8qNvqH052OsSgDu6sPQG2aGaLU36QwjkSOb9WeM+5fFouyM
    zNdvlWRLVVQ4+A81fEbLZBC9iRsJXbfhfE+Y6LBpnECjsgDzMPnkHJF8hWXtqe+M
    h0Wz7f2PZHU7vv9qYS1/jYdNSEy2EvfFMssxLZqTzzYxccakagase32otdv5JVRJ
    FQa/h1Mrxt27QeRPZZ95jmT+pm/cORJ3XdsfGaXCnaeN9odoQA2VwFPc7fOBoBSt
    r8oi/uwDc/XpzSbWr7GkETwmKiRj0SHQQjCNkzsB9BECgYEA0NE2fn3gJOBCXcLd
    ckVxvfh7V2rZLWdO2l+qkqJlbjmQUqG6uSfy2bwbMPKSwLW8hgHk2rmCQQAqhor1
    aCtTcVdnezF/PpSZhTmsEgRyXoowEz2BJhQ81+/p/nWrN5cc/hdUH0YfU6QxOPzz
    zwsaf6F5Y5LcRcYLx2KaZU6mC3kCgYEA45pJSdonVXM/0cx4JU+2+41A387CT9PX
    xHo6H/F/rlXrqmQcUP/hKK2cBFq3B0FkpmjPLG18Eqx54ZNJNzS2WfjC9Nks/HjQ
    BOZfqSnFpKcCHeL4pTJK7R1OoIFmUsfTgA2VZO1Yvl1kXZycrYD/sfjOGpLcxXMR
    GFpe1YVpCd8CgYEAxJq2PBI334Bl+/FknhpUJRC20G+BWwZRb7ly1+yeo1D/WU18
    iKfcNrSsxUEeeuKhRWqzFlxjDuAhKdvbguCIB8bLX2oS69DtWkoagDw/klN5QCRA
    XKHhR05TeYlAU26rlXBRe8CB7jZBQe6nfuBtao2VxPKZAfidTnS/+XI7U8ECgYBV
    MYQrS6gbeRczXZi/RpZUlGvrGkZrgP0rwyCMomXLiMe8sNpUi2LpSgqzKo2F/rlA
    /MxHcffWOY8pm2r1ahqzlMTMx5nqKwKaQu0dsdAUMJs/Op0doLShCq5KsATwCXIm
    ZW89JwZnwyd1TtDqtPWA1YO4OK7AjbChb/o9bEGD+wKBgQCOuE8d7dmWLymxUByF
    0L0mYg9j9VynKRfYZ5k72s0MIa71T8nep9t4MeB6trfm/+iSbtNur0NNMS3fL0v7
    ZWDic5OvpDZloM1TqfvzC7NE5BtcqqZPC+y/n4s58Ya/zAyTffkc3/h/vk6oMlRG
    BoDph0rArKB6fjiQgpi+gZQa6A==
    -----END PRIVATE KEY-----
  '';

  common-site-config =
    builtins.toFile "commont-site-config.json"
    (builtins.toJSON {
      default_site = "erp.${site}";
      allow_tests = true;
      # fake smtp setting for notification / email tests
      auto_email_id = "test@example.com";
      mail_server = "smtp.example.com";
      mail_login = "test@example.com";
      mail_password = "test";
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
    inherit (lib) nameValuePair;
    cfg = config.services.frappe;
    test-deps = lib.flatten (lib.catAttrs "test-dependencies" cfg.apps);
    penv-test = cfg.package.pythonModule.buildEnv.override {extraLibs = cfg.apps ++ test-deps;};

    setCert = prefix:
      nameValuePair (
        if prefix != null
        then "${prefix}.${site}"
        else site
      ) {
        sslTrustedCertificate = "${sslPath}/ca.crt";
        sslCertificate = "${sslPath}/ca.crt";
        sslCertificateKey = "${sslPath}/key.pem";
      };
  in {
    # loads custom `pkgs`
    imports = [cell.nixos.frappe];
    _file = ./tests.nix;
    config = {
      users.mutableUsers = false;
      networking.firewall.enable = false;
      networking.hosts = {
        "127.0.0.1" = [
          site
          "erp.${site}"
        ];
      };
      networking.domain = site;
      # setup a complete bench environment at the system level
      environment = {
        etc."${project}/admin-password".text = "admin";
        extraInit = ''
          # when the testing backdoor service enters the environment, the frappe systemd services
          # havn't emplaced this folders yet so we create it manually for the linking below
          mkdir -p ${cfg.benchDirectory}/sites
          # required for both, local bench command and systemd services to discover the shared test configuration
          # some tests need it to be writable, e.g. `test_set_global_conf`
          cp     ${common-site-config}                      ${cfg.benchDirectory}/sites/common_site_config.json
          # required also outside the systemd chroot for test runner command to discover assets via the file system
          ln -sf ${cfg.combinedAssets}/share/sites/assets   ${cfg.benchDirectory}/sites
          # required also outside the systemd chroot for test runner command to discover apps that are set-up in this environment
          ln -sf ${cfg.combinedAssets}/share/sites/apps.txt ${cfg.benchDirectory}/sites/apps.txt
          # required also outside the systemd chroot for test runner command to discover apps sources
          ln -sf ${cfg.combinedAssets}/share/apps           ${cfg.benchDirectory}
        '';
      };

      virtualisation = {
        # we don't do any nix build inside the test vm
        writableStore = false;
        cores = 2;
        # diskSize = 8000; # MB
        memorySize = 4096; # MB
        forwardPorts = [
          {
            guest.port = 80;
            host.port = 8080;
          }
          {
            guest.port = 443;
            host.port = 4433;
          }
        ];
      };
      security.pki.certificateFiles = [ca];
      systemd.tmpfiles.rules = ["d ${sslPath} 744 ${config.services.nginx.user} ${config.services.nginx.group}"];
      services.nginx.virtualHosts = builtins.listToAttrs (map setCert ["erp" null]);
      systemd.services."create-wildcard.${site}-cert" = {
        description = "Create a wildcard certificate for *.${site}";
        script = ''
          cp ${ca} ca.crt
          cp ${key} key.pem
          chmod 644 ca.crt
          chmod 640 key.pem
        '';

        wantedBy = ["multi-user.target" "nginx.service"];
        wants = ["systemd-tmpfiles-setup.service"];
        after = ["systemd-tmpfiles-setup.service"];
        unitConfig = {
          Before = ["multi-user.target" "nginx.service"];
          ConditionPathExists = "!${sslPath}/ca.crt";
        };

        serviceConfig = {
          User = config.services.nginx.user;
          Type = "oneshot";
          WorkingDirectory = sslPath;
          RemainAfterExit = true;
        };
      };

      services.frappe = {
        inherit project;
        enable = true;
        adminPassword = "/etc/${project}/admin-password";
        gunicorn_workers = 1;
        penv = lib.mkForce penv-test;
        apps = [
          # combining tests fails some frappe tests
          cell.pkgs.python310Packages.erpnext
          # cell.pkgs.python310Packages.insight
          # cell.pkgs.python310Packages.gameplan
        ];
        sites = {
          "erp.${site}" = {
            domains = ["erp.${site}"];
            apps = ["frappe" "erpnext"];
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
  tests =
    (nixos-lib.runTest {
      name = "frappe-test";
      _file = ./tests.nix;
      skipLint = true;
      defaults = test-vm;
      hostPkgs = inputs.nixpkgs;
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
    })
    // {
      meta.description = "The test frappix vm-based test suite";
    };
}
