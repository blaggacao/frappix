{
  description = "MY FRAPPIX";

  outputs = {
    frappix,
    std,
    self,
    ...
  } @ inputs:
    std.growOn {
      inherit inputs;
      cellsFrom = std.incl ./. ["tools" "apps" "deploy"];
      cellBlocks = with std.blockTypes; [
        # Pkgs Functions for Frappe Framework Components
        (functions "overlays")

        # apps
        (nvfetcher "_pins")
        (pkgs "pkgs")

        # local
        (anything "config" // {cli = false;})
        (devshells "shells")
        (frappix.frapper "jobs")
      ];
    }
    {
      packages = std.winnow (n: _: n == "frappix") self ["src" "pkgs"];
      templates = std.pick self ["src" "templates"];
    };

  # try to stick with a relesed version for a while
  inputs.nixpkgs.url = "github:nixos/nixpkgs/release-23.11";

  inputs = {
    frappix.url = "github:blaggacao/frappix";
    std.follows = "frappix/std";
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
