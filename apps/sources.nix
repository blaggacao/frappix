let
  inherit (builtins) readDir;
  inherit (inputs.nixpkgs) lib applyPatches substituteAll;

  fileIsNix = basename: type: type == "regular" && lib.hasSuffix ".nix" basename;

  loadPath = path: name: _: import (lib.path.append path name);

  sourceDirectoryEntries = path: lib.mapAttrs (loadPath path) (lib.filterAttrs fileIsNix (readDir path));

  sanitizeKey = name: attrs: lib.nameValuePair (lib.removeSuffix ".nix" name) attrs;

  applyInputPatches = name: attrs:
    {
      webshop =
        attrs
        // {
          src = applyPatches {
            name = "webshop-source";
            inherit (attrs) src;
            patches = [
              ./sources/webshop-pr-99-flit-core.patch
            ];
          };
        };
      frappe =
        attrs
        // {
          src = let
            stage_1 = applyPatches {
              name = "frappe-source-1";
              inherit (attrs) src;
              # this patch is needs to be present in all source trees,
              # such as the next one used for the assets below
              patches = [
                # Add missing unix domain socket support
                ./sources/frappe-uds.patch
                # This mariadb has passwordless root access
                # for the current user
                ./sources/frappe-uds-current-user.patch
              ];
            };
            stage_2 = applyPatches {
              name = "frappe-source-2";
              src = stage_1;
              patches = [
                # make the relative path to the generator script absolute
                # but reference the already patched version to work with uds
                (substituteAll {
                  src = ./sources/frappe-website-generator.patch;
                  frappe = stage_1;
                })
              ];
            };
          in
            stage_2;
        };
      builder =
        attrs
        // {
          src = applyPatches {
            name = "builder-source";
            inherit (attrs) src;
            patches = [
              ./sources/0001-refactor-use-flit-build-and-align-with-upstream.patch
            ];
          };
        };
    }
    .${name}
    or attrs;
in
  lib.mapAttrs applyInputPatches (lib.mapAttrs' sanitizeKey (sourceDirectoryEntries ./sources))
