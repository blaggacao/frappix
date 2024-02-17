{
  runCommand,
  symlinkJoin,
  yarn,
  lib,
}: apps: let
  apps' = lib.concatMapStringsSep "\n" (f: "${f.pname}:${f.outPath}") apps;
  appsTxt = builtins.toFile "apps.txt" (lib.concatMapStringsSep "\n" (app: app.pname) apps);

  assets = runCommand "frappe-apps-frontend-assets" {buildInputs = [yarn];} ''

    mkdir -p sites/assets apps

    # Cannot symlink because the code which traverses path to find sites
    # directory gets confused.
    while read app; do
      name=''${app%%:*}
      path=''${app##*:}
      cp -r $path/share/apps/$name apps/$name
      echo "$name" >> sites/apps.txt
    done <<APPS
    ${apps'}
    APPS


    pushd apps/frappe

    # Redis connection should fail and 'assets_json' chache key will not be deleted
    # This chache key should be deleted on service startup so that frappe recreates
    # the cache key on the very first access

    FRAPPE_REDIS_CACHE=unix:///dev/null
    export FRAPPE_REDIS_CACHE

    yarn --offline production

    unset FRAPPE_REDIS_CACHE

    popd


    pushd sites/assets

    symlinkPublicAndNodeModules() {
      echo "Link here public files and node_modules for: $2"
      find  "$1/share/apps/$2/$2/public" -mindepth 1 -maxdepth 1 -type d  | \
                xargs -I '{}' bash -c "ln -s {}  $2/"'$(basename {})'
      ln -s "$1/share/apps/$2/node_modules"     "$2/node_modules"
    }

    while read app; do
      name=''${app%%:*}
      path=''${app##*:}
      symlinkPublicAndNodeModules "$path" "$name"
    done <<APPS
    ${apps'}
    APPS

    popd

    mkdir -p $out/share/sites
    mv sites/assets   $out/share/sites/assets
    ln -sf ${appsTxt} $out/share/sites/apps.txt
  '';
in
  symlinkJoin {
    name = "frappe-apps";
    paths =
      apps # app sources are still required for dynamic building of website themes
      ++ [assets];
  }
