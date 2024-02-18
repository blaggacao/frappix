{
  gameplan,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  fetchFromGitHub,
  flit-core,
  # rembg,
  pythonOlder,
  python,
  extractFrappeMeta,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    pname
    version
    format
    ;

  inherit (gameplan) src;

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
