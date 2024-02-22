let
  inherit (inputs.nixpkgs.writers) writeBashBin;
in {
  new-site =
    (writeBashBin "new-site.sh" ''
      start-mariadb-for-frappe &
      MARIA_PID=$!
      trap "kill -SIGTERM $MARIA_PID && wait $MARIA_PID" EXIT
      (bench new-site "$@")
    '')
    // {meta.description = "Launch database and set up new site";};
  drop-site =
    (writeBashBin "drop-site.sh" ''
      start-mariadb-for-frappe &
      MARIA_PID=$!
      trap "kill -SIGTERM $MARIA_PID && wait $MARIA_PID" EXIT
      (bench drop-site "$@")
    '')
    // {meta.description = "Launch database and drop site";};
}
