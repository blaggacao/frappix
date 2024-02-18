with inputs.std.yants "frappix"; {
  python = {
    meta.description = "Frappix python overlays";
    __functor = _: final: prev: let
      checkPassthru = openStruct "FrappixPassthru" {
        packages = list drv;
        test-dependencies = list drv;
        frontend = option drv;
      };
    in {
      python311 = prev.python311.override {
        packageOverrides = pyFinal: pyPrev: {
          frappe = final.python3.pkgs.callPackage ./frappe.nix {
            inherit (inputs.cells.apps.sources) frappe bench;
          };
          erpnext = final.python3.pkgs.callPackage ./erpnext.nix {
            inherit (inputs.cells.apps.sources) erpnext;
          };
          gameplan = final.python3.pkgs.callPackage ./gameplan.nix {
            inherit (inputs.cells.apps.sources) gameplan;
          };
          insights = final.python3.pkgs.callPackage ./insights.nix {
            inherit (inputs.cells.apps.sources) insights;
          };
          ecommerce-integrations = final.python3.pkgs.callPackage ./ecommerce-integrations.nix {
            inherit (inputs.cells.apps.sources) ecommerce-integrations;
          };
          payments = final.python3.pkgs.callPackage ./payments.nix {
            inherit (inputs.cells.apps.sources) payments;
          };

          # frappe dependencies
          barcodenumber = pyFinal.callPackage ./barcodenumber.nix {};
          email-reply-parser = pyFinal.callPackage ./email-reply-parser.nix {};
          pydantic_2 = pyFinal.callPackage ./pydantic {};
          traceback-with-variables = pyFinal.callPackage ./traceback-with-variables {};

          # indirect dependencies
          # pydantic v2
          annotated-types = pyFinal.callPackage ./annotated-types.nix {};
          typing-extensions = pyFinal.callPackage ./typing-extensions.nix {};
          pydantic-core = pyFinal.callPackage ./pydantic-core {};

          # erpnext dependencies
          gocardless-pro = pyFinal.callPackage ./gocardless-pro.nix {};

          # payments dependencies
          razorpay = pyFinal.callPackage ./razorpay.nix {};
          paytmchecksum = pyFinal.callPackage ./paytmchecksum.nix {};

          # ecommerce-integrations dependencies
          shopify-python-api = pyFinal.callPackage ./shopify-python-api.nix {};
          pyactiveresource = pyFinal.callPackage ./pyactiveresource.nix {};

          # fjsd dependency
          json-source-map = pyFinal.callPackage ./json-source-map.nix {};
        };
      };
    };
  };
  tools = {
    meta.description = "Frappix tools overlays";
    __functor = _: final: prev: {
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
      extractFrappeMeta = src: let
        inherit (builtins) match head replaceStrings readFile fromTOML;
        pyproject = fromTOML (readFile (src + /pyproject.toml));
        format = "pyproject";
        pname = pyproject.project.name;
        version = let
          init = readFile (src + "/${pname}/__init__.py");
          m = match ''.*__version__ = ["|']([^("|')]+).*'' init;
          op = v:
            replaceStrings ["-"] ["."] (
              if prev.lib.hasSuffix "dev" v
              then v + "0"
              else v
            );
        in
          op (
            if pyproject.project ? version
            then pyproject.project.version
            else (head m)
          );
      in {
        inherit format version pname;
      };
      bench = final.callPackage ./bench.nix {};
      apps = final.callPackage ./apps.nix {};
      start-mariadb-for-frappe = final.callPackage ./start-mariadb-for-frappe.nix {};
    };
  };
}
