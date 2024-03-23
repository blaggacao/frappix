{
  appSources,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  flit-core,
  # rembg,
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

  src = mkAssets appSources.gameplan;
  inherit (appSources.gameplan) passthru;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  propagatedBuildInputs = with python.pkgs; [
    # rembg
  ];

  pythonRemoveDeps = [
    "rembg" # TODO: package
  ];

  # pythonImportsCheck = ["gameplan"];

  meta = with lib; {
    description = "Delightful, open-source, work communication tool for remote teams";
    homepage = "https://github.com/frappe/gameplan";
    license = licenses.agpl3Only;
    maintainers = with maintainers; [blaggacao];
  };
}
