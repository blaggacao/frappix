let
  inherit (inputs.nixpkgs.lib.modules) setDefaultModuleLocation mkVMOverride mkDefault;
  mkTestOverride = mkVMOverride;
in {
  frappix = {
    meta.description = "The main frappix nixos module";
    __functor = _: {pkgs, ...}: {
      # load our custom `pkgs`
      _module.args = {
        inherit (pkgs) frappix;
      };
      _file = ./nixos.nix;
      imports = map (m: setDefaultModuleLocation m m) [
        ./nixos/main.nix
        ./nixos/systemd.nix
        ./nixos/nginx.nix
      ];
    };
  };
  testrig = {
    lib,
    pkgs,
    config,
    frappix,
    ...
  }: let
    cfg = config.services.frappe;
    test-deps = lib.flatten (lib.catAttrs "test-dependencies" cfg.apps);
    penv-test = cfg.package.pythonModule.buildEnv.override {extraLibs = cfg.apps ++ test-deps;};

    project = "TestProject";

    sslPath = "/etc/nginx/ssl";
    common-site-config =
      builtins.toFile "commont-site-config.json"
      (builtins.toJSON {
        default_site = "erp.${config.networking.domain}";
        allow_tests = true;
        # fake smtp setting for notification / email tests
        auto_email_id = "test@example.com";
        mail_server = "smtp.example.com";
        mail_login = "test@example.com";
        mail_password = "test";
        # not sure about these
        monitor = 1;
        server_script_enabled = true;
        redis_queue = "unix:///run/redis-${cfg.project}-queue/redis.sock";
        redis_cache = "unix:///run/redis-${cfg.project}-cache/redis.sock";
      });

    # minica --domains '*.frx.localhost'
    ca = builtins.toFile "ca.pem" ''
      -----BEGIN CERTIFICATE-----
      MIIDSzCCAjOgAwIBAgIIGk75NgQUdjEwDQYJKoZIhvcNAQELBQAwIDEeMBwGA1UE
      AxMVbWluaWNhIHJvb3QgY2EgMWE0ZWY5MCAXDTI0MDMwNjIyMDkzM1oYDzIxMjQw
      MzA2MjIwOTMzWjAgMR4wHAYDVQQDExVtaW5pY2Egcm9vdCBjYSAxYTRlZjkwggEi
      MA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDhCp78fn3/Fw1lZPgOXosNnyRH
      yjonFV6vcnKoVWqAnrSH3WF6dWJXIu3ncKkYmRvo5yofkT/yqeKFU9mecW0k/2yh
      9fX9qDFRpSdPVnyEUDW7U6/y9tTxDH7gR9Xcjk0LHPsj7+Hq+xka5EFEu0eAbea4
      miLjN4edtVfZmtTGTNifNFW5yqUQbnHSgnrfq1IxaGR+hThiqxwGp8m0YjnvdCMz
      WOsEJuTSf1JtXYKpMmP7bKL2GbxlyL7CudRiZ4zkgATxknE9tvCWgMKxzS/n8696
      Q8DG3v2CScPzeod5EoGTn5Rs1Zl+33f0vcIEFzyydPM/Hk9N+bIf6NXzFEurAgMB
      AAGjgYYwgYMwDgYDVR0PAQH/BAQDAgKEMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggr
      BgEFBQcDAjASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQWBBRLBldgiEpXqUvr
      XE6hm1xE8whPLTAfBgNVHSMEGDAWgBRLBldgiEpXqUvrXE6hm1xE8whPLTANBgkq
      hkiG9w0BAQsFAAOCAQEAtIzifNoi245X0BW3JGCdOQXJ4U5hufBNvF7tUAEghyFo
      ez9eihLjg8HlDRjPwQeSDrRsXEC1DfyxpHB9wYkFRbhyKDmqUAVL7ExVEZz2Vy0f
      /inRYMSGPSpI61xKMotBPRLboAhD5pH9HDrpXwxBD/iBoAHxO4pNHNyJQbvpIJ+l
      pa69xde5LHQ7/UF+HYPVyBfPFWJP/ElW55poQOJsKjPOKN7+Xr4zShqB6ai5mfhu
      E8gUmKbc8cD9Sznb7thm+tqRMm/+tIKuf0xASLVLfzg3U0HQejcgm/UEISaGqH5p
      btDVpTCDuEPT9QA38mQwCgcjpEGGIbi3dcGfGhzD+w==
      -----END CERTIFICATE-----
    '';
    cert = builtins.toFile "cert.pem" ''
      -----BEGIN CERTIFICATE-----
      MIIDODCCAiCgAwIBAgIIL6KPg2gKl20wDQYJKoZIhvcNAQELBQAwIDEeMBwGA1UE
      AxMVbWluaWNhIHJvb3QgY2EgMWE0ZWY5MB4XDTI0MDMwNjIzMDQ0OVoXDTI2MDQw
      NTIyMDQ0OVowGjEYMBYGA1UEAwwPKi5mcngubG9jYWxob3N0MIIBIjANBgkqhkiG
      9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv/F6anuNNfkCLfTfF8DW8h98PJlaDevssved
      rxf8QNoPqLTqKJdcFO9bMpn6QwlsRuIJKfhEDnlKIvNKOEZooUbljhVyqbRlYYq1
      KDZtc4QT9rJC9T3Cp5Pm96nHm1fOk0ePthTd6Bt32nxRDpx9+4vYHuIlTiuIJfLS
      fy/otbPQRB0s4e9bXq7x08cELW5czwRE5whibBYD7geHdfHy9wU7l+OVkfKPmBHp
      oTmdc5ctPEX0U87sRC0ZSmf6tOU13EXwBY+srvJxBIAQwv8SPsj1IBdPOFOuf36F
      DiniwU/QruKbs3Z9mqVQQULDgEl1B+9pOlni1VX32Mzzeyf4dQIDAQABo3wwejAO
      BgNVHQ8BAf8EBAMCBaAwHQYDVR0lBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMCMAwG
      A1UdEwEB/wQCMAAwHwYDVR0jBBgwFoAUSwZXYIhKV6lL61xOoZtcRPMITy0wGgYD
      VR0RBBMwEYIPKi5mcngubG9jYWxob3N0MA0GCSqGSIb3DQEBCwUAA4IBAQArk3W8
      pdnr2idt/b6Gqqo+YtHI8yApIIXnxtElK9hQFkLd0bdDtmhZ6gBGNk2jg9DSUyLU
      jZuNGSGTS4TWz8iu5l/ypc2SmVhQ6XG4+1ZtlAVLBtBhqy4CcRS5B4taClk4q50o
      megWX4+Wf1oCC5k7286UrB9CJHWOapCG+PHJKREj9s/9QDd3dFGsmqj25cdCTjxY
      CFAkN9ecby8/Yj9FEHe8g2yfW6Zhedtyhwt5LvqFWbN9/6A5TcqDKvIEX3ZHALJF
      D84K6z3JWskuX/8K57Y03FF66QOkJ6zgFWZz3/ptf+/X+qwzLq3uJerLnSlq/K7q
      TdydBj+hpAPL0U5T
      -----END CERTIFICATE-----
    '';
    key = builtins.toFile "key.pem" ''
      -----BEGIN RSA PRIVATE KEY-----
      MIIEowIBAAKCAQEAv/F6anuNNfkCLfTfF8DW8h98PJlaDevssvedrxf8QNoPqLTq
      KJdcFO9bMpn6QwlsRuIJKfhEDnlKIvNKOEZooUbljhVyqbRlYYq1KDZtc4QT9rJC
      9T3Cp5Pm96nHm1fOk0ePthTd6Bt32nxRDpx9+4vYHuIlTiuIJfLSfy/otbPQRB0s
      4e9bXq7x08cELW5czwRE5whibBYD7geHdfHy9wU7l+OVkfKPmBHpoTmdc5ctPEX0
      U87sRC0ZSmf6tOU13EXwBY+srvJxBIAQwv8SPsj1IBdPOFOuf36FDiniwU/QruKb
      s3Z9mqVQQULDgEl1B+9pOlni1VX32Mzzeyf4dQIDAQABAoIBAFJ9L9P1VyGb6zDe
      7MWjjXyuxVCxwv76plXfjrfCAhnI3TPu1DcvnVYt666ad/A5a3wnBjMwS+dAfvj4
      P6xhrfOpqVvfodCHA47g8qvegDlFyOKbh6UnrrEgIgHLyEndeZzYA04IN7nZnC+c
      f6Vc4dOqLO5Q2CF5GeDdM1OPvl3fsiDgE9f0WZNuViBTgW05fU8Ntk6U5wLjHHHb
      2h6zqPVswaqilp0Uik9jHLPv+WzZbAbpg8TduBV7OxL7yZzN4GEPMFuIDjqcpJcM
      EXjxJoPqsuGM0gCL5Cu6pnIwMuOUjYRqdNwXesY3/Eurb2P/wHIEUN5i89VG+gWv
      Kc7AL8ECgYEAw88qPEXwHCNKz/IWlfO2rD29HymuCCOzzRu25+Bt4E3cy9vtbTW7
      CLDPaEDehntflgfmSVTj8y4ZhJG28gTMbqOwFT6uDnGjLye0MAjTvjwskmBwZ898
      fSH/RjSKf2Uhryq29zyP9BHY8aA7maaqaOSlRG4yn0DJ3UxsWAYx6oUCgYEA+vIW
      qdJXFxh9MhBIxPeRADZI6E/Al78ZCtRidO6aIr0s2Axq7PJOmeQ9AWq2Ikc9qdWo
      h9gQ1uZKjEaKU4hokktucIsyfzGH8gQOYSZYKVgs8Zf/gq26taUq8yWVx7CR/n7a
      fZ70N8USVZjujuaix3FsYlgDEYOrkXB9XtKuUTECgYEAvGZKu/2K3nfylovWwWbi
      P22T1zUSNtCrQlFFNmvRLH2eUSOFmYuWLvF4TlYEBZ8VRFTLdYlRXnzfnpdZUBnf
      3SBv3rEVZd5e5ZMtIv6LRUG+nQRfgvK3U+rvJEyPaa4Tr+fIba/+zhaSB0JlthwP
      YKeGgIYK/QGoeN38bOFhC8UCgYBATDcyXAqkiEnLwhBjJ2unukEEBSs7tmMcOz7e
      5yPnMsGCuevLumoZVDmtW0I/ljFeirgb1mi6J1eCibB3psPkeB9cBs5xeKd0g0WL
      7t83+LfLTz7QpOLqF9/hXQf7mmpN4wLonQnGIGCKPh0h0EZ1A8LZj+N5YVtccI4u
      9ZxkgQKBgF1Z+SMIZYYFYAS7pDf8BVWFZrUoIgNkX+RjAFtSlvkQJTYeQNx/ePun
      2Qtz4OBWSymnyyDhT4DdJ56FdxFk3Zqh5smNPBcEIjGIov1yW5rBBopg/LUBsKH8
      mTFwxPCr0voiiPqmKMmupOPeyr8DT+N65Vmy58mUgywlD6QIizBH
      -----END RSA PRIVATE KEY-----
    '';
  in {
    _file = ./tests.nix;
    options.services.nginx.virtualHosts = lib.mkOption {
      type = lib.types.attrsOf (lib.types.submodule {
        sslTrustedCertificate =
          lib.mkDefault
          config.environment.etc."ssl/certs/ca-certificates.crt".source;
        sslCertificate = lib.mkDefault "${sslPath}/cert.pem";
        sslCertificateKey = lib.mkDefault "${sslPath}/key.pem";
        enableACME = mkTestOverride false;
      });
    };
    config = {
      virtualisation.vmVariant.virtualisation = {
        memorySize = 4096;
        cores = 2;
        graphics = false;
        forwardPorts = [
          {
            guest.port = 80;
            host.port = 80;
          }
          {
            guest.port = 443;
            host.port = 443;
          }
        ];
      };
      users.mutableUsers = false;
      networking = {
        firewall.enable = false;
        # chrome and other browsers don't show a warning screen for self signed certs on localhost
        domain = mkTestOverride "frx.localhost";
        hostName = mkTestOverride "testhost";
        # workarround
        hosts = mkTestOverride {
          # "127.0.0.1" = ["frx.localhost" "localhost"];
          # "::1" = ["frx.localhost" "localhost"];
        };
      };
      security.acme.acceptTerms = mkTestOverride false;
      # setup a complete bench environment at the system level
      environment = {
        etc."${cfg.project}/admin-password".text = "admin";
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
      security.pki.certificateFiles = [ca];
      systemd.tmpfiles.rules = ["d ${sslPath} 744 ${config.services.nginx.user} ${config.services.nginx.group}"];
      services.getty.autologinUser = "root";
      users.users.root.password = "root";
      security.sudo = {
        enable = mkTestOverride true;
        wheelNeedsPassword = false;
      };
      systemd.services."create-wildcard-frx.localhost-cert" = {
        description = "Create a wildcard certificate for *.frx.localhost";
        script = ''
          cp ${cert} cert.pem
          cp ${key} key.pem
          chmod 644 cert.pem
          chmod 640 key.pem
        '';

        wantedBy = ["multi-user.target" "nginx.service"];
        wants = ["systemd-tmpfiles-setup.service"];
        after = ["systemd-tmpfiles-setup.service"];
        unitConfig = {
          Before = ["multi-user.target" "nginx.service"];
          ConditionPathExists = "!${sslPath}/cert.pem";
        };

        serviceConfig = {
          User = config.services.nginx.user;
          Type = "oneshot";
          WorkingDirectory = sslPath;
          RemainAfterExit = true;
        };
      };

      services.frappe = {
        project = mkDefault project;
        enable = true;
        adminPassword = mkTestOverride "/etc/${cfg.project}/admin-password";
        gunicorn_workers = mkTestOverride 1;
        penv = mkTestOverride penv-test;
        environment = {
          # python requests observes this, among others
          CURL_CA_BUNDLE = config.environment.etc."ssl/certs/ca-certificates.crt".source;
        };
        sites = {
          "erp.${config.networking.domain}" = {
            domains = ["erp.${config.networking.domain}"];
            apps = ["frappe"];
          };
        };
      };
    };
  };
}
