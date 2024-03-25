{
  appSources,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  flit-core,
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

  src = mkAssets appSources.hrms;
  inherit (appSources.hrms) passthru;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  # pythonImportsCheck = ["hrms"];

  meta = with lib; {
    description = "Open Source HR & Payroll Software";
    homepage = "https://github.com/frappe/hrms";
    license = licenses.agpl3Only;
    maintainers = with maintainers; [blaggacao];
  };
}
