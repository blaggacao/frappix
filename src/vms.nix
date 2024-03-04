let
  inherit (inputs.std.inputs) microvm;
  inherit (inputs) nixpkgs;
  inherit (cell) pkgs testModules nixos;
  eval = module:
    import (nixpkgs + /nixos/lib/eval-config.nix) {
      inherit (nixpkgs) system;
      modules = [module];
    };
in {
  default = eval ({config, ...}: {
    imports = [
      microvm.nixosModules.microvm
      testModules.default
      nixos.frappix
    ];
    nixpkgs = {inherit pkgs;};
    # hardware.opengl.enable = true;
    users.allowNoPasswordLogin = true;
    microvm = {
      hypervisor = "qemu";
      graphics.enable = false;
      vcpu = 4;
      mem = 4096;
      # forwardPorts = [
      #   {
      #     guest.port = 80;
      #     host.port = 8080;
      #   }
      #   {
      #     guest.port = 443;
      #     host.port = 4433;
      #   }
      # ];
      # share the host's /nix/store if the hypervisor can do 9p
      shares = [
        {
          tag = "ro-store";
          source = "/nix/store";
          mountPoint = "/nix/.ro-store";
          # proto = "virtiofs";
        }
      ];
      writableStoreOverlay = "/nix/.rw-store";
      volumes = [
        {
          image = "nix-store-overlay.img";
          mountPoint = config.microvm.writableStoreOverlay;
          size = 2048;
        }
      ];
    };
  });
}
