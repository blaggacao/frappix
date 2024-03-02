let
  inherit (builtins) readDir;
  inherit (inputs.nixpkgs) lib;

  fileIsNix = basename: type: type == "regular" && lib.hasSuffix ".nix" basename;

  loadPath = path: name: _: import (lib.path.append path name);

  sourceDirectoryEntries = path: lib.mapAttrs (loadPath path) (lib.filterAttrs fileIsNix (readDir path));

  sanitizeKey = name: path: lib.nameValuePair (lib.removeSuffix ".nix" name) path;
in
  lib.mapAttrs' sanitizeKey (sourceDirectoryEntries ./sources)
