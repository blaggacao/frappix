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

    # minica --domains '*.frx.localhost,frx.localhost'
    ca = builtins.toFile "ca.pem" ''
      -----BEGIN CERTIFICATE-----
      MIIDSzCCAjOgAwIBAgIIPU9J6u5X80AwDQYJKoZIhvcNAQELBQAwIDEeMBwGA1UE
      AxMVbWluaWNhIHJvb3QgY2EgM2Q0ZjQ5MCAXDTI0MDMwODE1NTY0NloYDzIxMjQw
      MzA4MTU1NjQ2WjAgMR4wHAYDVQQDExVtaW5pY2Egcm9vdCBjYSAzZDRmNDkwggEi
      MA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDz8UiJosJ8VQHmnrDfOeSU4fa6
      TvryujuyQ70OsqA3V244AIbcIMN5Nu093xtDNcv1qPy4xgHM98CVX2p07L31YoIQ
      9DQHfiGoQzpJDxByDnEp+M2yYXRAH7/w85GZIdg7UM983t0sZJO3/Snu1IK8TCfk
      m87cvulYDUt2znWXSu2tGJLxbI6hp37B2moct3gznWr4KBy7xhKp3aAhH00Dto5L
      fQz5/yxjz46P0Am+y+bD07vESIgpT1eE3vqvp1dzjLtWuSVVru0GvWmYmbApXun+
      lvbB7le8axlS0HaYo8nwLW0PaMMASVPsxT331DgFmpSY0RpOB89JGIqHIsnFAgMB
      AAGjgYYwgYMwDgYDVR0PAQH/BAQDAgKEMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggr
      BgEFBQcDAjASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQWBBRhPUqoqdzKlGry
      SGLr8TCyyffC/TAfBgNVHSMEGDAWgBRhPUqoqdzKlGrySGLr8TCyyffC/TANBgkq
      hkiG9w0BAQsFAAOCAQEABefjwBrn2FbngcB5je9FluoPFDlENOaAciaOcjRCa+1D
      ZMwETGhlYGqObHU/4knXdOas+LZv48ow32KFLVm+bWJre7BM9yThSpQgjOg00rLc
      Cm80UKiFFdrD1G/ywfysefh81Hf+r0q49B+JnJJ0uKrM/NrasCMoiB+GjzFkOSox
      g4j25wZMrvZZ6ObdotRac/A3viyFYraaxL6TckRin0AZolSZoZ3xehr5lEixYDBp
      f2sXM9K6qgR7+ytEi/B76VDLaPMwn6n642Nk85qn/C3aahoBg4Cd+AS3lCfewsoJ
      9/DYMsacMgvtWw8WoqisrZdSACzqmWgK9cgStcJ0og==
      -----END CERTIFICATE-----
    '';
    cert = builtins.toFile "cert.pem" ''
      -----BEGIN CERTIFICATE-----
      MIIDSTCCAjGgAwIBAgIIX1DmGMtxE90wDQYJKoZIhvcNAQELBQAwIDEeMBwGA1UE
      AxMVbWluaWNhIHJvb3QgY2EgM2Q0ZjQ5MB4XDTI0MDMwODE1NTY0N1oXDTI2MDQw
      NzE0NTY0N1owGjEYMBYGA1UEAwwPKi5mcngubG9jYWxob3N0MIIBIjANBgkqhkiG
      9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmE4gVR3zJPD6mEmzjFHXn/RxOxWVJmxkMiL0
      i4QooPjH+vI9LHuPiqTCv3Y4j4rtiYr7qUVTmBJb+hbonKq/aMKTcddtjEGNgh9r
      j18EvXQD8VeXATmXiMpjr85g5EoE40R0Do9KyJj+55bxUNUJcmKCntqWtIK1tjlL
      aehIBuqhBELmc6a/xEQkxE1bV4YK4UuklhRpDsSAmyRYnKqVL3SsFNv11Hu8eARE
      CaJpHID1FgDQLfRs38iZvmikXAZNehD8199lZdVaItKnspcEfPa3J3NSSb5BZ3aS
      cVS8j5XYjcuvcXYJdkBRv78eavAqADB8FG+aq4mFRNbGkKooXQIDAQABo4GMMIGJ
      MA4GA1UdDwEB/wQEAwIFoDAdBgNVHSUEFjAUBggrBgEFBQcDAQYIKwYBBQUHAwIw
      DAYDVR0TAQH/BAIwADAfBgNVHSMEGDAWgBRhPUqoqdzKlGrySGLr8TCyyffC/TAp
      BgNVHREEIjAggg8qLmZyeC5sb2NhbGhvc3SCDWZyeC5sb2NhbGhvc3QwDQYJKoZI
      hvcNAQELBQADggEBABXUAYN05W63+LFNgwqOX3LOOlJGRVvJQqlzgVMCGs5qbnd3
      n12IeTHowZNqZ8oYU6600IOxE4MydFD43xnB03Fx+qH8k5uJhq0tWBSN0shocNt4
      M2qRLAUstV3zSLijpb1vkJ90fS6Mwy0iQIA0laCYmG1N7OX1fDu4Udd5MccgYQoM
      TLKX1Lh5XqyTmN346lnYSamxiKr3EFJadi12jU8YSMi0UbudTxHIGQCjmkAR0WBj
      dAfbyI7fMNCFlFq+1t4KowQjF6DU2e5ZmnPUhLIwdF6ABmt5/4nLAwRVv80IliTc
      gx6leAzAsCsJLM0qKY+worleMBZPY8YsJRG/+7Y=
      -----END CERTIFICATE-----
    '';
    key = builtins.toFile "key.pem" ''
      -----BEGIN RSA PRIVATE KEY-----
      MIIEpAIBAAKCAQEAmE4gVR3zJPD6mEmzjFHXn/RxOxWVJmxkMiL0i4QooPjH+vI9
      LHuPiqTCv3Y4j4rtiYr7qUVTmBJb+hbonKq/aMKTcddtjEGNgh9rj18EvXQD8VeX
      ATmXiMpjr85g5EoE40R0Do9KyJj+55bxUNUJcmKCntqWtIK1tjlLaehIBuqhBELm
      c6a/xEQkxE1bV4YK4UuklhRpDsSAmyRYnKqVL3SsFNv11Hu8eARECaJpHID1FgDQ
      LfRs38iZvmikXAZNehD8199lZdVaItKnspcEfPa3J3NSSb5BZ3aScVS8j5XYjcuv
      cXYJdkBRv78eavAqADB8FG+aq4mFRNbGkKooXQIDAQABAoIBADODSSBAzvoRn1Be
      rSGqlLl/HcUUGawzQPhMJlYBzxQS0OCpidM/v17vNwc23w59uLWqkk/AKPPoUb+W
      e/pxLegq11/Lszua+FeodOK7Colhcevw6hv59KzJd0oBDXhpKJoNjwtVn7+VL7H4
      tYnXZCiR9QfxesN26irF2iHp9GKR92SDYOe9RD4YKZgIU/KzOleX5IIJSPbTPn6i
      Lh4iRz5IthDwRhoB7yuJ2h2AwNOBRcVGWvyHXL2FBDI8CKClK6xYf1sLFckIqrd0
      8p8FXtXM+exO55h/G4HqptkIh2+nKdYy0IKuwC6eOlCZdNjx6aHMMXCjZ1qgu7Mn
      GwAnGOkCgYEAwP/tTNurTM1n3fVKriJDsqrwusiBU86WtsQkBEqmCH1+T4LF6zGj
      fT3cofd0BgtYWkW0WYU5549eGLkQxGX5QBJwQA7Ozt++uDBGK6cePTxn2EHf712/
      aFxwsYr4hPU9AdAdq/fFoNekju+MUIs+C4U6ojx0837wdaeuG7D2zwcCgYEAygWM
      uDWUtRo+GiJN6I8lCzFRJDhExIshggc5GL7yCCZbHOpXYAEzkIot2b7mu1ilqwW/
      PJRUIkIBYuLU36csEeQ4CSGMwXB2iksQ3F2cJMmOnqsUtzcIwctQzQ/aKuWMclbi
      WLD44a+O1pNzw22+DeYjniXPpNFbqVvCBChp0HsCgYB1TplTr+kso2TQejlMIjN3
      s4LiZOCGqfjdWdZybVUBsBVICrp1vBQdGa6zG47/5YFsTRXTm7CYWIHfEQ1p8nlP
      QmXL6bQ19bUciur7uXYdzktoHJIaEac3rYgpwchQOCc+pNqEHfOXUbsJzfxBMIEj
      y3TaC1kibzOEr8iZuDQrnQKBgQCt3MzYlDRhEC62KyPFq7wDv/PHKi30wJCb6T94
      TozZ+ribUArWcvI/yMvhA+xq+8XIQ+/rYPRvb0LmKbVurd69nx2irh8HM5SxPB1M
      qbuB5X06jJ4Nd+2vax0k/imSlW+jz6aJEfV/talGfiw42q+gIpowtvXXMN6kCHYX
      QfifFQKBgQCeJ/Va1DpCqVIHEoWgzFvQsziyuLrZFeSddAXGMBby0XPjTXuUma4d
      b06yRBcZEUFKF9Akc2L9r8ddWIwPqdqDyDdKUWJ9al5XLpykKIfx10zNxGN2Gi08
      wfZbXvnw0BSk7WFRvUqVbFufdTWDJpSaON1fZrLCTtlqZncR+Ayw4g==
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
      systemd.services."${cfg.project}-config-setup" = {
        unitConfig.AssertPathIsReadWrite = mkTestOverride null;
        script = let
          settingsFormat = pkgs.formats.json {};
          commonSiteConfigFile = settingsFormat.generate "common_site_config.json" cfg.commonSiteConfig;
        in
          mkTestOverride
          # bash
          ''
            set -euo pipefail
            # some tests need it to be writable, e.g. `test_set_global_conf`
            cp -f ${commonSiteConfigFile} ./common_site_config.json
            chmod 775 ./common_site_config.json
          '';
      };

      services.frappe = {
        project = mkDefault project;
        enable = true;
        adminPassword = mkTestOverride "/etc/${cfg.project}/admin-password";
        gunicorn_workers = mkTestOverride 1;
        penv = mkTestOverride penv-test;
        commonSiteConfig = {
          default_site = "erp.${config.networking.domain}";
          allow_tests = true;
          # fake smtp setting for notification / email tests
          auto_email_id = "test@example.com";
          mail_server = "smtp.example.com";
          mail_login = "test@example.com";
          mail_password = "test";
          server_script_enabled = true;
          # not sure about these
          monitor = 1;
          redis_queue = "unix:///run/redis-${cfg.project}-queue/redis.sock";
          redis_cache = "unix:///run/redis-${cfg.project}-cache/redis.sock";
        };
        environment = {
          # python requests observes this, among others
          CURL_CA_BUNDLE = config.environment.etc."ssl/certs/ca-certificates.crt".source;
          # openssl-based librarise typically observe this
          SSL_CERT_FILE = config.environment.etc."ssl/certs/ca-certificates.crt".source;
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
