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

  src = mkAssets appSources.drive;
  inherit (appSources.drive) passthru;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  propagatedBuildInputs = with python.pkgs; [
    pillow
    opencv4 # opencv-python-headless
    python-magic
  ];

  pythonRelaxDeps = [
  ];
  pythonRemoveDeps = [
    "opencv-python-headless"
  ];

  # would require frappe, but since frappe is almost certainly customized,
  # we don't include it here / TODO: decide if we may actually add it?
  # pythonImportsCheck = ["erpnext"];

  meta = with lib; {
    description = "An easy to use, document sharing and management solution.";
    homepage = "https://github.com/frappe/drive";
    license = licenses.agpl3Only;
    maintainers = with maintainers; [blaggacao];
  };
}
