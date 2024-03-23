{
  appSources,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  flit-core,
  python,
  extractFrappeMeta,
  mkAssets,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    pname
    version
    format
    ;

  src = mkAssets appSources.print-designer;
  inherit (appSources.print-designer) passthru;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

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
