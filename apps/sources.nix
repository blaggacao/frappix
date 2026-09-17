let
  inherit (builtins) readDir;
  inherit (inputs.nixpkgs) lib applyPatches replaceVars;

  fileIsNix = basename: type: type == "regular" && lib.hasSuffix ".nix" basename;

  loadPath = path: name: _: import (lib.path.append path name);

  sourceDirectoryEntries = path: lib.mapAttrs (loadPath path) (lib.filterAttrs fileIsNix (readDir path));

  sanitizeKey = name: attrs: lib.nameValuePair (lib.removeSuffix ".nix" name) attrs;

  applyInputPatches = name: attrs:
    {
      frappe = let
        workdirsrc = applyPatches {
          name = "frappe-source-1";
          inherit (attrs) src;
          # this patch is needs to be present in all source trees,
          # such as the next one used for the assets below
          patches = [
            # This mariadb has passwordless root access
            # for the current user
            ./sources/frappe-uds-current-user-v15.patch
            # ./sources/frappe-uds-current-user-develop.patch
          ];
        };
        deploysrc = applyPatches {
          name = "frappe-source-2";
          src = workdirsrc;
          patches = [
            # make the relative path to the generator script absolute
            # but reference the already patched version to work with uds
            (replaceVars ./sources/frappe-website-generator.patch {
              frappe = workdirsrc;
            })
            ./sources/frappe-skip-tests.patch
            ./sources/frappe-test-timeout-override.patch

            # not possible because source is a link to the nix store
            # cannot be skipped by test id because it throws in `setUpClass`
            ./sources/frappe-skip-doctype-tests-that-write-to-source.patch

            # this test does not inherit the class that we're patching to support test skipping
            ./sources/frappe-skip-test-password-strength.patch
          ];
        };
      in
        attrs
        // {
          src = deploysrc;
          passthru = (attrs.passthru or {}) // {inherit workdirsrc;};
        };
    }
    .${name}
    or attrs;
in
  lib.mapAttrs applyInputPatches (lib.mapAttrs' sanitizeKey (sourceDirectoryEntries ./sources))
