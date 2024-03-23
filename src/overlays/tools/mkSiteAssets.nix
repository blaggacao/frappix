{
  runCommand,
  symlinkJoin,
  yarn,
  rsync,
  lib,
}: apps: let
  assets = runCommand "frappe-apps-assets" {buildInputs = [yarn rsync];} ''
    mkdir -p $out/share/sites/assets $out/share/apps sites/assets apps

    umask u=rwx,go=rx

    cat ${appsList}

    # Cannot symlink because the build needs a writable source tree
    while read app; do
      name=''${app%%:*}
      path=''${app##*:}
      rsync -a --prune-empty-dirs \
        --include '*/public/*' \
        --exclude '/cypress/*' \
        --exclude '/.github/*' \
        --exclude '*/*.py' \
        $path/ $out/share/apps/$name
      # cp -r $path $out/share/apps/$name
      echo "$name" >> $out/share/sites/apps.txt # used by esbuild to discover apps
      ls $out/share/apps/$name
    done < ${appsList}

    echo "... of which have node dependencies ..."
    find $out/share/apps -name 'node_modules' -type d -prune
    echo

    pushd $out/share/apps/frappe

    # Redis connection should fail and 'assets_json' chache key will not be deleted
    # This chache key should be deleted on service startup so that frappe recreates
    # the cache key on the very first access

    FRAPPE_REDIS_CACHE=unix:///dev/null
    export FRAPPE_REDIS_CACHE

    yarn --offline production

    unset FRAPPE_REDIS_CACHE

    popd

    pushd $out/share/sites/assets # already holds some build artifacts from above

    emplacePublicAndNodeModules() {
      echo
      echo "Emplace assets for: $2"
      [[ ! -d $2 ]] && mkdir $2
      if [[ -e "$out/share/apps/$2/$2/public" ]]; then
        find  "$out/share/apps/$2/$2/public" -mindepth 1 -maxdepth 1 | \
                  xargs -I '{}' bash -c "echo linking {}; ln -s {}  $2/"'$(basename {})'
      fi
      if [[ -e "$out/share/apps/$2/node_modules" ]]; then
        echo "linking $out/share/apps/$2/node_modules"
        ln -s "$out/share/apps/$2/node_modules" "$2/node_modules"
      fi
    }

    while read app; do
      name=''${app%%:*}
      path=''${app##*:}
      emplacePublicAndNodeModules "$path" "$name"
    done < ${appsList}

    popd
  '';

  appsList = runCommand "apps.list" {} ''
    touch $out
    cat << LIST > $out
    ${
      lib.concatMapStringsSep "\n"
      (f: "${f.pname}:${f.src.outPath}")
      apps
    }
    LIST
  '';
in
  assets
