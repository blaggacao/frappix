{
  src,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  fetchFromGitHub,
  flit-core,
  # rembg,
  pythonOlder,
  pythonPackages,
  extractFrappeMeta,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    pname
    version
    format
    ;

  inherit src;

  passthru = {
    # clone url to setup local dev environment
    url = "https://github.com/frappe/gameplan.git";
    test-dependencies = with pythonPackages; [
    ];
  };

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  propagatedBuildInputs = [
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
