{
  description = "Nix-based frappe development & deployment environment";

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
        (anything "sources")

        # Modules
        (anything "nixos")
        (anything "shell")
        (nixostests "tests")

        # local
        (anything "config" // {cli = false;})
        (devshells "shells")
      ];
    }
    {
      packages = std.winnow (n: _: n == "frappix") self ["src" "pkgs"];
    };

  # stick with master for a while until more dependencies are stabilized
  inputs.nixpkgs.url = "github:nixos/nixpkgs/release-23.11";

  inputs = {
    std.url = "github:divnix/std/v0.30.0";
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
