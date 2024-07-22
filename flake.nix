{
  description = "Frappe Development & Deployment Environment";

  outputs = {
    std,
    self,
    ...
  } @ inputs:
    std.growOn {
      inherit inputs;
      cellsFrom = std.incl ./. ["src" "local" "apps" "examples"];
      cellBlocks = with std.blockTypes; [
        (data "templates")

        # Pkgs Functions for Frappe Framework Components
        (functions "overlays")
        (pkgs "pkgs")

        # App Sources
        (anything "sources")

        # Modules
        (anything "nixos")
        (anything "shell")
        (nixostests "tests")
        (microvms "vms")
        (runnables "jobs" // {cli = false;}) # for downstream use

        # local
        (anything "config" // {cli = false;})
        (devshells "shells")
      ];
    }
    {
      packages = std.winnow (n: _: n == "frx") self ["src" "pkgs"];
      shellModule = std.harvest self ["src" "shell" "bench"];
      toolsOverlay = std.harvest self ["src" "overlays" "tools"];
      pythonOverlay = std.harvest self ["src" "overlays" "python"];
      frappeOverlay = std.harvest self ["src" "overlays" "frappe"];
      packagesOverlay = std.harvest self ["src" "overlays" "packages"];
      nixosModules = std.harvest self ["src" "nixos"];
      frapper = import ./std/frapper.nix {inherit inputs;};
      nvchecker = import ./std/nvchecker.nix {inherit inputs;};
      templates = std.pick self ["examples" "templates"];
    };

  inputs.nixpkgs.url = "github:nixos/nixpkgs/release-24.05";

  inputs = {
    std.url = "github:divnix/std/v0.33.0";
    devshell.url = "github:numtide/devshell";
    devshell.inputs.nixpkgs.follows = "nixpkgs";
    nixago.url = "github:nix-community/nixago";
    nixago.inputs.nixpkgs.follows = "nixpkgs";
    nixago.inputs.nixago-exts.follows = "";
    microvm.url = "github:astro/microvm.nix";
    microvm.inputs.nixpkgs.follows = "nixpkgs";
    std.inputs = {
      nixpkgs.follows = "nixpkgs";
      devshell.follows = "devshell";
      nixago.follows = "nixago";
      microvm.follows = "microvm";
    };
  };
}
