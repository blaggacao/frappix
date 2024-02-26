/*
This file holds reproducible shells with commands in them.

They conveniently also generate config files in their startup hook.
*/
let
  inherit (inputs.std.lib) dev cfg;
  inherit (inputs) nixpkgs;
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
        ((dev.mkNixago cfg.treefmt) cell.config.treefmt)
        ((dev.mkNixago cfg.editorconfig) cell.config.editorconfig)
        ((dev.mkNixago cfg.lefthook) cell.config.lefthook)
        ((dev.mkNixago cfg.mdbook) cell.config.mdbook)
      ];

      commands = [
        {
          package = inputs.std.std.cli.std;
        }
        {
          package = nixpkgs.nvfetcher;
        }
      ];
    })
    // {meta.description = "Development environment for this repository";};
  book =
    (dev.mkShell {
      name = "Frappix Book Shell";
      nixago = [
        ((dev.mkNixago cfg.mdbook) cell.config.mdbook)
      ];
    })
    // {meta.description = "Book development & rendering environment for this repository";};
}
