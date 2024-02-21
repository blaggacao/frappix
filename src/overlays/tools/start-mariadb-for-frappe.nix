{
  lib,
  writers,
  mysql,
}: let
  mariadbd = "${mysql}/bin/mariadbd";
  mariadb-admin = "${mysql}/bin/mariadb-admin";
  mariadb-install-db = "${mysql}/bin/mariadb-install-db";
in
  lib.lazyDerivation {
    derivation = writers.writeBashBin "start-mariadb-for-frappe" ''
      set -euo pipefail

      args=()
      args+=("--collation-server=utf8mb4_unicode_ci")
      args+=("--datadir=$MYSQL_HOME")
      args+=("--basedir=$DEVSHELL_DIR")

      if [[ ! -d "$MYSQL_HOME" || ! -f "$MYSQL_HOME/ibdata1" ]]; then
        mkdir -p "$MYSQL_HOME"
        ${mariadb-install-db} ''${args[@]}
      fi

      ${mariadbd} ''${args[@]} &
      PID=`jobs -p`

      trap "kill -SIGQUIT $PID" INT

      wait
    '';
    meta.description = "Start (and initialize) MariaDB with frappe's config";
  }
