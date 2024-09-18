{
  appSources,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  flit-core,
  extractFrappeMeta,
  mkAssets,
  applyPatches,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    pname
    version
    format
    ;

  src = mkAssets (appSources.hrms
    // {
      src = applyPatches {
        inherit (appSources.hrms) src;
        name = "hrms-prod";
        patches = [
          ./hrms-0001-build-socket-port-is-reverse-proxied.patch
        ];
      };
    });
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
