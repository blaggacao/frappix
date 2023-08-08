# adopted from: https://git.pub.solar/axeman/erpnext-nix/src/branch/main/node/mk-app.nix
{
  runCommand,
  path,
  nodejs,
  yarn,
  nodePackages,
}: let
  # Copied from nixpkgs:pkgs/development/tools/yarn2nix-moretea/yarn2nix/default.nix
  fixup_yarn_lock = runCommand "fixup_yarn_lock" {buildInputs = [nodejs];} ''
    mkdir -p $out/lib
    mkdir -p $out/bin

    cp ${path}/pkgs/development/tools/yarn2nix-moretea/yarn2nix/lib/urlToName.js $out/lib/urlToName.js
    cp ${path}/pkgs/development/tools/yarn2nix-moretea/yarn2nix/internal/fixup_yarn_lock.js $out/bin/fixup_yarn_lock

    patchShebangs $out
  '';
in
  name: src: yarnOfflineCache:
    runCommand "${name}-app" {
      pname = name;
      buildInputs = [fixup_yarn_lock yarn nodePackages.node-gyp-build];
    } ''
      mkdir -p $out/share/apps
      cp -r ${src} $out/share/apps/${name}
      chmod -R +w $out/share/apps/${name}

      export HOME=$(mktemp -d)
      yarn config --offline set yarn-offline-mirror ${yarnOfflineCache}

      cd $out/share/apps/${name}
      fixup_yarn_lock yarn.lock
      yarn --offline --ignore-scripts --frozen-lockfile --ignore-engines install
    ''
