let
  inherit (inputs.nixpkgs.writers) writeBashBin;
in {
  new-site =
    (writeBashBin "new-site.sh" ''
      start-mariadb-for-frappe &
      MARIA_PID=$!
      trap "kill -SIGTERM $MARIA_PID && wait $MARIA_PID" EXIT
      (bench new-site "$@")
      (bench use "''${@: -1}")
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
