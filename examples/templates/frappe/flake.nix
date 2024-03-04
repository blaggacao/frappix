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
        # apps
        (frappix.nvchecker "_pins")
        (pkgs "pkgs")

        # local
        (anything "config" // {cli = false;})
        (devshells "shells")
        (frappix.frapper "tasks")
      ];
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
