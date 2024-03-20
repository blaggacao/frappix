{
  appSources,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  flit-core,
  python,
  mkYarnApp,
  mkYarnOfflineCache,
  extractFrappeMeta,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    pname
    version
    format
    ;

  inherit (appSources.builder) src;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
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
    // appSources.builder.passthru;

  propagatedBuildInputs = with python.pkgs; [
    playwright
    install-playwright
  ];

  pythonRelaxDeps = [
  ];

  # would require frappe, but since frappe is almost certainly customized,
  # we don't include it here / TODO: decide if we may actually add it?
  # pythonImportsCheck = ["erpnext"];

  meta = with lib; {
    description = "Modern website builder for modern web pages";
    homepage = "https://github.com/frappe/builder";
    license = licenses.agpl3Only;
    maintainers = with maintainers; [blaggacao];
  };
}
