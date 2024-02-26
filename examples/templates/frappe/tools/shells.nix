/*
This file holds reproducible shells with commands in them.

They conveniently also generate config files in their startup hook.
*/
let
  inherit (inputs.std.lib) dev;
  inherit (inputs.frappix) apps shellModule;
  inherit (inputs.cells.apps) pkgs;
in {
  # Tool Homepage: https://numtide.github.io/devshell/
  default =
    (dev.mkShell ({frappix, ...}: {
      name = "Frappix Shell";
      pkgs = pkgs;
      imports = [shellModule];

      bench.enableExtraProjectTools = false;
      # bench.apps = with frappix; [
      # ];
    }))
    // {meta.description = "Development environment for this repository";};
}
