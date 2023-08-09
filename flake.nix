{
  description = "Nix-based frappe development & deployment environment";

  outputs = {
    std,
    self,
    ...
  } @ inputs:
    std.growOn {
      inherit inputs;
      cellsFrom = std.incl ./. ["src" "local"];
      cellBlocks = with std.blockTypes; [
        # lib

        # Pkgs Functions for Frappe Framework Components
        (functions "overlays")
        (pkgs "pkgs")

        # Modules
        (anything "nixos")
        (anything "shell")
        (anything "tests")

        # local
        (nixago "config")
        (devshells "shells")
      ];
    }
    {
      packages = std.winnow (n: _: n == "frappix") self ["src" "pkgs"];
    };

  # stick with master for a while until more dependencies are stabilized
  inputs.nixpkgs.url = "github:nixos/nixpkgs";
  inputs.nixos.url = "github:nixos/nixpkgs/release-23.05";

  inputs = {
    std.url = "github:divnix/std/main";
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
