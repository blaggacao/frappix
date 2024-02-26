{
  description = "Frappe Development & Deployment Environment";

  outputs = {
    std,
    self,
    ...
  } @ inputs:
    std.growOn {
      inherit inputs;
      cellsFrom = std.incl ./. ["src" "local" "apps"];
      cellBlocks = with std.blockTypes; [
        # lib

        # Pkgs Functions for Frappe Framework Components
        (functions "overlays")
        (pkgs "pkgs")

        # App Sources
        (nvfetcher "sources")

        # Modules
        (anything "nixos")
        (anything "shell")
        (nixostests "tests")
        (runnables "jobs" // {cli = false;}) # for downstream use

        # local
        (anything "config" // {cli = false;})
        (devshells "shells")
      ];
    }
    {
      packages = std.winnow (n: _: n == "frappix") self ["src" "pkgs"];
      shellModule = std.harvest self ["src" "shell" "bench"];
      toolsOverlay = std.harvest self ["src" "overlays" "tools"];
      pythonOverlay = std.harvest self ["src" "overlays" "python"];
      frappeOverlay = std.harvest self ["src" "overlays" "frappe"];
      frapper = import ./std/frapper.nix {inherit inputs;};
    };

  # stick with master for a while until more dependencies are stabilized
  inputs.nixpkgs.url = "github:nixos/nixpkgs/release-23.11";

  inputs = {
    std.url = "github:divnix/std/v0.33.0";
    devshell.url = "github:numtide/devshell";
    devshell.inputs.nixpkgs.follows = "nixpkgs";
    nixago.url = "github:nix-community/nixago";
    nixago.inputs.nixpkgs.follows = "nixpkgs";
    nixago.inputs.nixago-exts.follows = "";
    std.inputs = {
      nixpkgs.follows = "nixpkgs";
      devshell.follows = "devshell";
      nixago.follows = "nixago";
    };
  };
}
