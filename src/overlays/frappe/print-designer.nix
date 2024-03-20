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

  inherit (appSources.print-designer) src;

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
    // appSources.print-designer.passthru;

  propagatedBuildInputs = with python.pkgs; [
    pyqrcode
    pypng
    python-barcode
  ];

  pythonRelaxDeps = [
  ];

  # would require frappe, but since frappe is almost certainly customized,
  # we don't include it here / TODO: decide if we may actually add it?
  # pythonImportsCheck = ["erpnext"];

  meta = with lib; {
    description = "Frappe App to Design Print Formats using interactive UI.";
    homepage = "https://github.com/frappe/print_designer";
    license = licenses.agpl3Only;
    maintainers = with maintainers; [blaggacao];
  };
}
