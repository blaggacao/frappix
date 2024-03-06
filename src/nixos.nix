let
  inherit (inputs.nixpkgs.lib.modules) setDefaultModuleLocation mkVMOverride mkDefault;
  inherit (inputs.nixpkgs.lib) nameValuePair;
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
        default_site = "erp.${config.networking.fqdn}";
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

    # minica --domains '*.localdomain'
    ca = builtins.toFile "ca.crt" ''
      -----BEGIN CERTIFICATE-----
      MIIDNDCCAhygAwIBAgIIKghNJgzTsqgwDQYJKoZIhvcNAQELBQAwIDEeMBwGA1UE
      AxMVbWluaWNhIHJvb3QgY2EgNzk5YmQ5MB4XDTI0MDMwNjE2NDExMFoXDTI2MDQw
      NTE1NDExMFowGDEWMBQGA1UEAwwNKi5sb2NhbGRvbWFpbjCCASIwDQYJKoZIhvcN
      AQEBBQADggEPADCCAQoCggEBAKjzsw1piQxEaFbEmnXMSHMkitQn7WCI4EDQk0bV
      +voEZTEtWVcsvXFORq7rn0vjTLHff8Hg3dUAi42In2+ntP/5Gmarbn8nIUUEYtGP
      kmi50jAbqwxEZNR5mshqBBKC5Da2iUsOzK+2lq25h72h2GcXSNSwJTIyOluN9VFW
      4m9cgJL2z2AUwq2FIslF5V1c6gshs0yO35flANya9ExYBoIz6i5jZ1cN/hrJffQW
      UkglzMx6YsF9k+bDSJE94PrgoBKW8TIguVotu7/Iw8a9En9Z+OkhEaY4ABpTdu8L
      RxSJe0upLRdY5+y9R4OK0mJCoVfHg0BEtfz9b1FswXvjFJMCAwEAAaN6MHgwDgYD
      VR0PAQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNV
      HRMBAf8EAjAAMB8GA1UdIwQYMBaAFGPwy4elA+T+7Ud6os74hgPhYIEiMBgGA1Ud
      EQQRMA+CDSoubG9jYWxkb21haW4wDQYJKoZIhvcNAQELBQADggEBAEe3lnCGKYZp
      HVSTGiwxG6RTlXnNT+9SXDS09gRVQa67dHPizfRNjCXPFTXiPrYtBDYWLJj5pOS1
      zaFQcZHujbw4qsRt1gTn27+29vs86wfbWRuxp8UvDn+zuFanng3CjXeONrYgB5Un
      U1TCrchv4ubK8V2YO3Vj3cJoTtcCV3tU5FfWHoSPiK/MhxQfMZTi/cnNwurbjZ93
      CMAqlJrn25DQEOidcf5qEWDXZCmI25qjAGwh8+RTa5ImYcSvbjem+m7aUbJSdm6T
      R45pdO8l0ZlU3eg/D86ln4rhCgyHXyGHGknkEWnkTmd3oKusg5tD26u4fwvEx9vm
      v0U2eKtsHWY=
      -----END CERTIFICATE-----
    '';
    key = builtins.toFile "key.pem" ''
      -----BEGIN RSA PRIVATE KEY-----
      MIIEpAIBAAKCAQEAqPOzDWmJDERoVsSadcxIcySK1CftYIjgQNCTRtX6+gRlMS1Z
      Vyy9cU5GruufS+NMsd9/weDd1QCLjYifb6e0//kaZqtufychRQRi0Y+SaLnSMBur
      DERk1HmayGoEEoLkNraJSw7Mr7aWrbmHvaHYZxdI1LAlMjI6W431UVbib1yAkvbP
      YBTCrYUiyUXlXVzqCyGzTI7fl+UA3Jr0TFgGgjPqLmNnVw3+Gsl99BZSSCXMzHpi
      wX2T5sNIkT3g+uCgEpbxMiC5Wi27v8jDxr0Sf1n46SERpjgAGlN27wtHFIl7S6kt
      F1jn7L1Hg4rSYkKhV8eDQES1/P1vUWzBe+MUkwIDAQABAoIBAQCnN4wf2jQqUAp0
      1mGJ9YY/cAt3r4zh3pcVj1o04dRlX7RH1/p0rXNSkYaj2dDv6ygdZHeuDEGCb+ev
      TWl/uR0LvCDFPSc/8hqblJu5jb/6pu/BbaD9ozOomDL56PPe3m3BOSjpgNxVjQHV
      L6uJpIXqgsEywKQP6maX9wi2WKgETozvEt/tbxZxeRlnW/o14A9g/U7R32Zj2h1s
      xpvtYWo2dCNu+bkcyvEi8R0L9DBumgMuasJdc4aFzQO/Rze8L7uLOf+4xekiHfXq
      BCk3ccMUZOj53WSAPHprmJ8jcTQRn+gmg+vWr1RXuUSjCjzOw5In5cEWjieNjRA2
      JQ2oNKcBAoGBAMMb4jnY5NV4fASEpV//JKbbQISWeT4jJSeZ3tHyyj/4OtuJ8mFV
      WsRhx2A529Nug/kApFlchAM7ZNwOkXLXYBAQ/iugzje1i+QLUpKMg4Y+zi9Vk/MN
      tCne8VadTfzuI9EnIeU96MMkw8yLVKsFuw5IIjyQ6xLooUiEVc0klxitAoGBAN2u
      BP2YDS4e32XgI1s9yNl5VU+9myex38vYoZPvuqS5Vwt5AdoX6Xo0Y74B5WMN4IaY
      wgQOwVkgPaz/qY+X6q7XlPCPZ9e+nvghmp2bHOaHXbM6G/czeaDG/Y2UfCepCJwZ
      PZQGzAr9N6HBuDz8SpIBZ/zRIxXFuR0QUiv8Gko/AoGAV4LjNlUNVp5C6ffhASy8
      cMa4qn+fg/pZiOigI4UFqCmbpKq792JEYv8EYSmyaqQQN5hNHvO7FoQGWhmCrYLi
      yHIGvuTSefRI+ZEGiUrTF1yGOH7m7EaCP6GKl/HYcBEUKZSmxF6/Tv/nfpAj+s2I
      OACssoPBnGqRJKiOn4PA7cUCgYEAz1IswK8vxG6DJ9gTuQVzjlB3hPgi32DvmMml
      c6HEwMHFsqkdHkc2yF+u2MkVKyqTTc4XxYu3MA+DHwSMJAtEJPjiBolX6OIR8qYa
      4ENtJ/x5mWFDPlIZ8k+oWn0AEGd58eN5P7OLqMtg+Bsgn4ikhSBjjIJbecVNdu0I
      rLI+NCkCgYBleIxoh4d35di2ezKvRBkjN7UunY8Z7QRg49MU9bLt1x4m6iPIJFjc
      wOKNemlph1WT8VkSornd7do0fpYdQnIbIYLZ3cyar8IpeLuLZG3vfzWT++yICoTk
      2h6l9GCupVt4nnaErtigL1ahff4tMVhzA5GndrsG5aR2qVH5LTU+OA==
      -----END RSA PRIVATE KEY-----
    '';
  in {
    _file = ./tests.nix;
    options.services.nginx.virtualHosts = lib.mkOption {
      type = lib.types.attrsOf (lib.types.submodule {
        sslTrustedCertificate = lib.mkDefault "${sslPath}/ca.crt";
        sslCertificate = lib.mkDefault "${sslPath}/ca.crt";
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
      networking.firewall.enable = false;
      # networking.hosts = {
      #   # ensure services can resolve each other via DNS (and use the configured TLS, e.g. for OIDC flow)
      #   "127.0.0.1" = lib.pipe config.services.nginx.virtualHosts [
      #     (lib.mapAttrsToList (
      #       name: vhost:
      #         (lib.singleton (
      #           if vhost.serverName != null
      #           then vhost.serverName
      #           else name
      #         ))
      #         ++ vhost.serverAliases
      #     ))
      #     lib.flatten
      #     lib.unique
      #   ];
      #   # same for ipv6
      #   "::1" = lib.pipe config.services.nginx.virtualHosts [
      #     (lib.mapAttrsToList (
      #       name: vhost:
      #         (lib.singleton (
      #           if vhost.serverName != null
      #           then vhost.serverName
      #           else name
      #         ))
      #         ++ vhost.serverAliases
      #     ))
      #     lib.flatten
      #     lib.unique
      #   ];
      # };
      networking = {
        # nss-myhostname specially resolves *.localhost.localdomain
        # so that we get local routing without any further config
        # wilcard cert from above on *.localdomain
        domain = mkTestOverride "localhost.localdomain";
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
      systemd.services."create-wildcard-localdomain-cert" = {
        description = "Create a wildcard certificate for *.localdomain";
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
          "erp.${config.networking.fqdn}" = {
            domains = ["erp.${config.networking.fqdn}"];
            apps = ["frappe"];
          };
        };
      };
    };
  };
}
