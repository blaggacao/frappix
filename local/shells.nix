/*
This file holds reproducible shells with commands in them.

They conveniently also generate config files in their startup hook.
*/
let
  inherit (cell) config;
  inherit (inputs.std.std) cli;
  inherit (inputs.std.lib) dev cfg;
  pkgs = import inputs.nixpkgs {
    inherit (inputs.nixpkgs) system;
    overlays = [
      inputs.cells.src.overlays.tools
    ];
  };
in {
  # Tool Homepage: https://numtide.github.io/devshell/
  default =
    (dev.mkShell {
      name = "Frappix Shell";

      # Tool Homepage: https://nix-community.github.io/nixago/
      # This is Standard's devshell integration.
      # It runs the startup hook when entering the shell.
      nixago = [
        (dev.mkNixago cfg.conform)
        (dev.mkNixago cfg.treefmt config.treefmt)
        (dev.mkNixago cfg.editorconfig config.editorconfig)
        (dev.mkNixago cfg.lefthook config.lefthook)
        (dev.mkNixago cfg.mdbook config.mdbook)
      ];

      commands = [
        {package = cli.std;}
        {package = pkgs.nvfetcher;}
        {package = pkgs.nvchecker-nix;}
      ];
    })
    // {meta.description = "Development environment for this repository";};
  book =
    (dev.mkShell {
      name = "Frappix Book Shell";
      nixago = [(dev.mkNixago cfg.mdbook config.mdbook)];
    })
    // {meta.description = "Book development & rendering environment for this repository";};
}
