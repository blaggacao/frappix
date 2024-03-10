{
  appSources,
  lib,
  buildPythonPackage,
  python,
  mkYarnOfflineCache,
  mkYarnApp,
  extractFrappeMeta,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    format
    ; # We can't extract anything other than format because pyproject.toml does not have the information

  inherit (appSources.wiki) pname src version;

  nativeBuildInputs = [
    python.pkgs.setuptools
  ];
  passthru =
    {
      frontend = let
        yarnLock = "${src}/yarn.lock";
        # # w/o IFD
        # offlineCache = fetchYarnDeps {
        #   inherit yarnLock;
        #   hash = "";
        # };
        # w/  IFD
        offlineCache = mkYarnOfflineCache {inherit yarnLock;};
      in
        mkYarnApp pname src offlineCache;
    }
    // appSources.wiki.passthru;
  meta = with lib; {
    description = "Modern, Feature-Rich Wiki Application";
    homepage = "https://github.com/frappe/wiki";
    license = licenses.mit;
    maintainers = with maintainers; [minion3665];
  };
}
