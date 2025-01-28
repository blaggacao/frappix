let
  inherit (inputs.nixpkgs.writers) writeBashBin;
in {
  new-site =
    (writeBashBin "new-site.sh" ''
      start-mariadb-for-frappe &
      MARIA_PID=$!
      trap "kill -SIGTERM $MARIA_PID && wait $MARIA_PID" EXIT

      while ! mariadb-admin ping --silent; do
        echo "Waiting for MariaDB to start..."
        sleep 1
      done
      # Check if MariaDB is healthy
      if mariadb-admin status; then
          echo "MariaDB is up and running"
          if [ $# -eq 0 ]; then
              GREEN='\033[1;32m'
              NC='\033[0m'
              # No arguments provided, prompt for input
              printf "''${GREEN}Enter the site name: ''${NC}"; read -r site_name
              printf "''${GREEN}Set as new default? (y/N): ''${NC}"; read -r set_default

              (bench new-site --admin-password admin --db-root-password root "$site_name")
              if [ "$set_default" = "y" ]; then
                (bench use "$site_name")
              fi
              printf "User: ''${GREEN}%s''${NC} Password: ''${GREEN}%s''${NC}" "Administrator" "admin"
              echo
          else
            (bench new-site "$@")
          fi
      else
          echo "MariaDB failed to start properly"
          exit 1
      fi
    '')
    // {
      meta = {
        description = "Launch database and set up new site";
        requiresArgs = ["run"];
      };
    };
  drop-site =
    (writeBashBin "drop-site.sh" ''
      start-mariadb-for-frappe &
      MARIA_PID=$!
      trap "kill -SIGTERM $MARIA_PID && wait $MARIA_PID" EXIT
      (bench drop-site "$@")
    '')
    // {
      meta = {
        description = "Launch database and drop site";
        requiresArgs = ["run"];
      };
    };
  run-env =
    (writeBashBin "run-env.sh" ''
      exec process-compose up "$@"
    '')
    // {meta.description = "Launch the entire environment or a particular sub-service";};
}
