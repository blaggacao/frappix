let
  inherit (inputs) nixpkgs;
  inherit (inputs.cells.src) pkgs nixos system;
  inherit (nixpkgs) lib;
  evalNixos = import (nixpkgs + /nixos/lib/eval-config.nix);

  configuration = evalNixos {
    system = null;

    modules = [
      {
        nixpkgs = {
          hostPlatform = {inherit system;};
          inherit pkgs;
        };
      }

      {system.stateVersion = "26.05";}

      {
        networking.hostName = "manual-testing-deployment";
        virtualisation.vmVariant.virtualisation.qemu.networkingOptions = lib.mkForce [];
      }

      {
        users = {
          mutableUsers = false;
          users.root.hashedPassword = "";
        };
        services.openssh = {
          enable = true;
          settings = {
            PermitRootLogin = "yes";
            PermitEmptyPasswords = "yes";
          };
        };
        security.pam.services.sshd.allowNullPassword = true;
      }

      {
        imports = ["${nixpkgs}/nixos/modules/profiles/headless.nix"];
        services.journald.console = "/dev/ttyS0";
      }

      (nixosArgs: {
        services.nginx.virtualHosts = lib.flip lib.mapAttrs nixosArgs.config.services.frappe.sites (_: _: {
          enableACME = true;
        });
        security.acme.acceptTerms = true;
        systemd = lib.mkMerge (lib.flip lib.mapAttrsToList nixosArgs.config.services.frappe.sites (
          name: site: {
            services."acme-order-renew-${name}".enable = false;
            timers."acme-renew-${name}".enable = false;
          }
        ));
      })

      (nixosArgs: {
        imports = [nixos.frappix];

        services.frappe = {
          enable = true;
          project = "ManualTestDeployment";
          gunicorn_workers = 1;
          adminPassword = pkgs.writeText "admin-password.txt" "admin";
          includeTestDeps = true;
          commonSiteConfig = {
            default_site = "frappix.localhost";
            allow_tests = true;
          };
          sites."frappix.localhost" = {
            domains = ["frappix.localhost"];
            apps = ["frappe"];
          };
        };
      })

      {
        virtualisation.vmVariant.virtualisation.qemu.options = [
          "-display none"
          "-serial file:/dev/stderr"
          "-device virtio-balloon"
        ];
      }
    ];
  };
in {
  script =
    (pkgs.writers.writeNuBin "deployment-for-manual-testing"
      # nu
      ''
        def --wrapped main [ host_https_port: int host_ssh_port: int ...args ] {
          let guest_https_port = ${toString configuration.config.services.nginx.defaultSSLListenPort}
          let guest_ssh_port = ${toString (builtins.head configuration.config.services.openssh.ports)}

          ${lib.getExe configuration.config.system.build.vm} ...[
            -net "nic,netdev=user.0,model=virtio"
            -netdev $"user,id=user.0,hostfwd=tcp::($host_https_port)-:($guest_https_port),hostfwd=tcp::($host_ssh_port)-:($guest_ssh_port)"
            -smp ((sys cpu | length) - 1 | into string)
            ...$args
          ]
        }
      '')
    // {
      meta.description = "Headless VM for manual testing";
    };
}
