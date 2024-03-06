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

    # minica --domains '*.localhost,*.frx.localhost'
    ca = builtins.toFile "ca.crt" ''
      -----BEGIN CERTIFICATE-----
      MIIDQzCCAiugAwIBAgIIZihSICHS/4kwDQYJKoZIhvcNAQELBQAwIDEeMBwGA1UE
      AxMVbWluaWNhIHJvb3QgY2EgNzk5YmQ5MB4XDTI0MDMwNjE5MDQwNVoXDTI2MDQw
      NTE4MDQwNVowFjEUMBIGA1UEAwwLKi5sb2NhbGhvc3QwggEiMA0GCSqGSIb3DQEB
      AQUAA4IBDwAwggEKAoIBAQDUXpNy9YEfNcoJDNsZ4IaV5N7ZOv5/96fKyCs5WD6m
      FRBqZuT0+FIoCdLEggAVPjgwPqdyeWXNIyxVXjHhAl/5wn4kR5ijfnQwTnIZgxqX
      8hJZCshgL8xdCWbIbJKUzFdCZllgCfpJtynZIbTz95oKycR71fT0rVDdyPUKYzVe
      Qrt4nX0TR2NjEQrVQY9SvwD7KGTMaboiLVaxuYI0lgZJJtFvv8Rm8h+qyq2+RmVE
      bOODsVrswbb5V845F6FOoZlOnGbogbmLEjWjunZijQpfkxmgClkOgIC57aXPVyaM
      R4ojMGMJp3MuF7arS4aT6lTA4NVM4B3WjFMBDgq8g7axAgMBAAGjgYowgYcwDgYD
      VR0PAQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNV
      HRMBAf8EAjAAMB8GA1UdIwQYMBaAFGPwy4elA+T+7Ud6os74hgPhYIEiMCcGA1Ud
      EQQgMB6CCyoubG9jYWxob3N0gg8qLmZyeC5sb2NhbGhvc3QwDQYJKoZIhvcNAQEL
      BQADggEBALfE075WUj6tk+2ds3wiODD3AnQz5BV5Z7b+MErpkH1IgT0vNM0lAXeF
      ohzCgbW50TzfixJeol4oWT/sEO9yATih6kH65arEQ4ga8/jfMZPA9fyE+NL/trSq
      M5NNbKT8GVf346tWhyHT9hVBjPiM2GDMOdv0bHGy808Qz2jjTRU6vLa7FntQGY5x
      Sm5n7qZ4Os/jJoVazbfl4h5Uee1KRQweqHQux0xyxsaVcEJUgIVWTcCzXOV2mQKB
      kF6fNtS00+B+a0deAZV2XDmTGf6PFEvaxflVU5KuC4wjeIMkmhDtbFV2Xeqz8jd1
      0GQs8/QOW/64g8PkeGtCXtPfwJWWse8=
      -----END CERTIFICATE-----
    '';
    key = builtins.toFile "key.pem" ''
      -----BEGIN RSA PRIVATE KEY-----
      MIIEpQIBAAKCAQEA1F6TcvWBHzXKCQzbGeCGleTe2Tr+f/enysgrOVg+phUQambk
      9PhSKAnSxIIAFT44MD6ncnllzSMsVV4x4QJf+cJ+JEeYo350ME5yGYMal/ISWQrI
      YC/MXQlmyGySlMxXQmZZYAn6Sbcp2SG08/eaCsnEe9X09K1Q3cj1CmM1XkK7eJ19
      E0djYxEK1UGPUr8A+yhkzGm6Ii1WsbmCNJYGSSbRb7/EZvIfqsqtvkZlRGzjg7Fa
      7MG2+VfOORehTqGZTpxm6IG5ixI1o7p2Yo0KX5MZoApZDoCAue2lz1cmjEeKIzBj
      CadzLhe2q0uGk+pUwODVTOAd1oxTAQ4KvIO2sQIDAQABAoIBAQCQZqZ32nsrz5VK
      xhUM6WBZ97+XkcePF8Rd2/GYEmq230fEMaao81hZpSRNPd/0kdP+6ftNmUIhVDNG
      8L+Vsdm0qAzBenVNZiR23EA1HLIucwkKxows6xNYh5X93eVli/QhUBqhdOdczFCG
      Nacm5Es33q3dTkQ7QsXjqEsF/yNArX5KnRrXk0c7W+MiuMdUOGrgYhMWPZWIzv+O
      ejjUnTegr64dPdQFwWRCi2+4HEp3dUAkjapN3xy99E9kb5ZP0bSu3/XMRHw/kRFM
      an3B1sQKks9ow1QY4baQVWOjfO/r3wIOq2gyJUrZ/XOSj8ZlEs8pLBBtjQVPCs7z
      otiBuS6JAoGBAO2XwbB8QTJNWvgUbTxRgd16jTclwYmQPxd+rr6n6zU4nhPNWHuK
      YGnvWeVgXcs/fqT4NdipUQewKMSEXOXeWfdS6OVpSQi88udMmkuSJpwRu4kqAxaN
      YTn+n8bIRgptwiSy3m6w7pbOZJbitO5+meV+xyz+DATUU8Dnuv07HIDXAoGBAOTS
      jrfwb4YasPgSJFCKUqQT92iRYshD3f+bftAaUodzgnZ8RQ+xEqhewXAvygwlobbd
      fCLGpLTFk2Fj8LqjQlVJZtfi0sB6CKS+w11a3rF81GStNW58Q15L7Ja9zkc2TJp/
      5zMVGOKg2BPG3lpJif8HHfT1EyjCtKuF2z/xDKu3AoGBAI7vhFvrdMGRXg/vIgRu
      uKUIrFooAbYDrKEy2mfi15LuG9On7vprtjMlBr0C64pyCXuvw50zx4bLiMspIkY8
      LX2oSGpzm7eBDNTv9cdPBqFP3bXYK4FuzrY4I+FP7Ssq+uhfH4gSM4dQZZ2Mh/MP
      AQDa83Jy58IkBrr/7jOYUz6DAoGBAL+Hnv5HupG9dbOvO8ZOga3lKInWZ6DJbeCt
      /w+heML35JPYoNXpmXxlE/UbiztvpFS0P1u8edD2L86tIKqYTMWmkvbRXSbO/r0n
      D8/sZ8qYeg9rC/ZW/OzJEFd8uFTTFnub46HWXuYTS8oCA8v/Egrtoh2PpWHQ1/la
      KZLz6W8xAoGAWLNa4h0fN3iPJf49I/b+jWjIX0MJaHrycFSlmZU8ESxWITLJdA0/
      VMVFKjGEzH/ji639kBoQ2WeK/Crc70CrEp6v0iAt9Dtsg04CxCCToB0bodirT5jp
      UE6Ygerk1W6DESXAPy5CRJjca5KxunRRETqhMXdPcTcrJRacngQYENQ=
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
      networking = {
        firewall.enable = false;
        # chrome and other browsers don't show a warining screen for self signed certs on localhost
        domain = mkTestOverride "localhost";
        hostName = mkTestOverride "frx";
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
      systemd.services."create-wildcard-localhost-cert" = {
        description = "Create a wildcard certificate for *.localhost";
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
