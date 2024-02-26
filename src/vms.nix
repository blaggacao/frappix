let
  inherit (inputs.std.inputs) microvm;
in {
  default = {
    config,
    lib,
    pkgs,
    ...
  }: {
    imports = [microvm.nixosModules.microvm];
    # hardware.opengl.enable = true;
    microvm = {
      hypervisor = "cloud-hypervisor";
      graphics.enable = false;
      vcpu = 4;
      ram = 4096;
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
      # share the host's /nix/store if the hypervisor can do 9p
      shares = {
        tag = "ro-store";
        source = "/nix/store";
        mountPoint = "/nix/.ro-store";
        proto = "virtiofs";
      };
      writableStoreOverlay = "/nix/.rw-store";
      volumes = [
        {
          image = "nix-store-overlay.img";
          mountPoint = config.microvm.writableStoreOverlay;
          size = 2048;
        }
      ];
    };
  };
}
