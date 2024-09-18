# adopted from: https://git.pub.solar/axeman/erpnext-nix/src/branch/main/node/mk-app.nix
{
  runCommand,
  path,
  nodejs_18,
  yarn,
  nodePackages,
  emptyFile,
  yarn2nix-moretea,
  callPackage,
  lib,
  stdenv,
}: let
  inherit (yarn2nix-moretea) mkYarnNix;
in
  {
    pname,
    src,
    version,
    ...
  }: let
    yarnLock = "${src}/yarn.lock";
    yarnOfflineCache =
      (callPackage (mkYarnNix {
        yarnLock =
          if builtins.pathExists yarnLock
          then yarnLock
          else emptyFile;
      }) {})
      .offline_cache;
    hasLock = builtins.pathExists yarnLock;
    pjson = lib.importJSON (src + /package.json);
    runBuild = pjson ? scripts && pjson.scripts ? build && pname != "frappe";
  in
    stdenv.mkDerivation {
      pname = pname + "_";
      inherit src version;
      nativeBuildInputs = [
        nodejs_18
        (yarn.overrideAttrs {withNode = false;})
        yarn2nix-moretea.fixup_yarn_lock
      ];
      configurePhase = ''
        export HOME=$(mktemp -d)
      '';
      buildPhase =
        lib.optionalString hasLock ''
          yarn config --offline set yarn-offline-mirror ${yarnOfflineCache}
          fixup_yarn_lock yarn.lock
          yarn install --offline \
            --frozen-lockfile \
            --ignore-engines --ignore-scripts
          patchShebangs .
        ''
        + lib.optionalString (hasLock && runBuild) ''
          yarn --offline --frozen-lockfile --ignore-engines  build
        '';

      installPhase = ''
        mkdir -p $out
        cp -R . $out
      '';
    }
