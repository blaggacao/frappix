{
  python = final: prev: {
    python310Packages = final.python310.pkgs; # without this line, overlay is not fully specified
    python310 = prev.python310.override {
      packageOverrides = pyFinal: pyPrev: {
        frappe = final.python3.pkgs.callPackage ./frappe {};
        erpnext = pyFinal.callPackage ./erpnext.nix {};

        # frappe dependencies
        # maxminddb-geolite2 = pyFinal.callPackage ./python/maxminddb-geolite2.nix {};
        # psycopg2-binary = pyFinal.callPackage ./python/psycopg2-binary.nix {};
        barcodenumber = pyFinal.callPackage ./barcodenumber.nix {};
        email-reply-parser = pyFinal.callPackage ./email-reply-parser.nix {};
        git-url-parse = pyFinal.callPackage ./git-url-parse.nix {};
        traceback-with-variables = pyFinal.callPackage ./traceback-with-variables {};

        # indirect dependencies
        # pydantic v2
        pydantic_2 = pyFinal.callPackage ./pydantic {};

        # fjsd dependency
        json-source-map = pyFinal.callPackage ./json-source-map.nix {};

        # fixes
        # # https://github.com/pallets/werkzeug/issues/2603
        werkzeug = pyFinal.callPackage ./werkzeug.nix {};
        httpbin = pyFinal.callPackage ./httpbin.nix {}; # test fail due to werkzeug update
      };
    };
  };
  tools = final: prev: {
    # special yarn build tooling for frappe
    mkYarnApp = final.callPackage ./mkYarnApp.nix {};
    mkFrappeAssets = final.callPackage ./mkFrappeAssets.nix {};
    mkYarnOfflineCache = {yarnLock}: let
      mkYarnNix = yarnLock:
        final.runCommand "yarn.nix" {}
        ''
          ${final.yarn2nix}/bin/yarn2nix \
            --lockfile ${yarnLock} \
            --no-patch \
            --builtin-fetchgit > $out
        '';
    in
      (final.callPackage (mkYarnNix yarnLock) {}).offline_cache;

    fsjd = final.callPackage ./fsjd.nix {};
    frappix = final.callPackage ./frappix.nix {
      inherit (inputs.std.inputs) paisano-tui;
      inherit (import (inputs.self + /flake.nix)) description;
    };
    bench = final.callPackage ./bench.nix {};
    start-mariadb-for-frappe = final.callPackage ./start-mariadb-for-frappe.nix {};
  };
}
