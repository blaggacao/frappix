{
  lib,
  writers,
}:
lib.lazyDerivation {
  derivation = writers.writeBashBin "apps" ''
    longest_appname="$(ls "$FRAPPE_APPS_ROOT" | awk '{ print length }' | sort -nk1 | tail -n1)"
    bold=$(tput bold)
    blue=$(tput setaf 4)
    green=$(tput setaf 185)
    gray=$(tput setaf 245)
    normal=$(tput sgr0)
    indent="$(printf " %*s" $longest_appname)"

    while [[ $# -gt 0 ]]; do
      case $1 in
        -l|--list)
          LIST="$2"
          shift # past argument
          shift # past value
          ;;
        -r|--remotes)
          REMOTES=1
          shift # past argument
          ;;
        -*|--*)
          echo "Unknown option $1"
          exit 1
          ;;
        *)
          FRAGMENT=$1
          shift # past argument
          ;;
      esac
    done

    for app in $(ls "$FRAPPE_APPS_ROOT"); do
      if [[ ! -e "$FRAPPE_APPS_ROOT/$app/.git" ]]; then
        continue
      fi
      GIT_ARGS=(
        "--git-dir" "$FRAPPE_APPS_ROOT/$app/.git"
        "--work-tree" "$FRAPPE_APPS_ROOT/$app"
      )

      current_branch="$(git ''${GIT_ARGS[@]} branch --show-current)"
      last_tag="$(git ''${GIT_ARGS[@]} describe --all)"
      app_fmt="$bold$blue%-''${longest_appname}s$normal $green%s$gray - %s$normal\n"
      printf "$app_fmt" "$app" "$current_branch" "$last_tag"

      fmt="$gray%s$normal\n"

      if ! [[ -z ''${LIST+x} ]]; then
        if ! [[ -z ''${REMOTES+x} ]]; then
          body="$(git ''${GIT_ARGS[@]} branch --remotes --list "$LIST/*" --verbose | sed "s/^/$indent/")"
        else
          body="$(git ''${GIT_ARGS[@]} branch --list "$LIST/*" --verbose --verbose | sed "s/^/$indent/")"
        fi
      elif ! [[ -z ''${REMOTES+x} ]]; then
      	body="$(git ''${GIT_ARGS[@]} remote --verbose | sed "s/^/$indent/")"
      else
        body="$(git ''${GIT_ARGS[@]} status --short | sed "s/^/$indent/")"
      fi

      ! [[ -z ''${body// } ]] && printf "$fmt" "$body"

    done
    if ! [[ -z ''${FRAGMENT+x} ]]; then
      echo
      echo "Apps on $FRAGMENT:"
      while read LINE; do
        printf "  %-''${longest_appname}s %s\n" "$(echo "$LINE" | cut -d' ' -f1)" "$(echo "$LINE" | cut -d' ' -f2)"
      done <<< "$(
         nix eval --raw --impure --no-warn-dirty --expr \
         "with builtins.getFlake \"git+file:`pwd`\"; with nixpkgs.lib; concatStringsSep \"\n\" (map (a: a.pname + \" \" + a.version) nixosConfigurations.$FRAGMENT.config.services.frappe.apps)" 2>/dev/null
      )"
    fi
  '';
  meta.description = "Interact with frappe apps";
}
