inputs: final: prev: {
  nvchecker-nix = final.python3.pkgs.callPackage ./nvchecker.nix {};
  # special (optional) yarn build tooling for frappe
  mkAssets = final.callPackage ./mkAssets.nix {};
  # consolidated site assets
  mkSiteAssets = final.callPackage ./mkSiteAssets.nix {};

  fsjd = final.callPackage ./fsjd.nix {};
  frx = final.callPackage ./frx.nix {
    version = inputs.nixpkgs.lib.fileContents (inputs.self + /VERSION);
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
  analyze-prs = final.callPackage ./analyze-prs.nix {};
}
