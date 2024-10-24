let
  inherit (builtins) readDir;
  inherit (inputs.nixpkgs) lib;

  fileIsNix = basename: type: type == "regular" && lib.hasSuffix ".nix" basename && basename != "default.nix";

  loadPath = path: name: _: import (lib.path.append path name);

  sourceDirectoryEntries = path: lib.mapAttrs (loadPath path) (lib.filterAttrs fileIsNix (readDir path));

  sanitizeKey = name: attrs: lib.nameValuePair (lib.removeSuffix ".nix" name) attrs;
in
  lib.mapAttrs' sanitizeKey (sourceDirectoryEntries ./_pins)
