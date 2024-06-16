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
  applyPatches,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    pname
    version
    format
    ;

  src = mkAssets (appSources.crm
    // {
      src = applyPatches {
        inherit (appSources.crm) src;
        name = "crm-prod";
        patches = [
          ./crm-0001-build-socket-port-is-reverse-proxied.patch
        ];
      };
    });
  inherit (appSources.crm) passthru;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  propagatedBuildInputs = with python.pkgs; [
    twilio
  ];

  pythonRelaxDeps = [
    "twilio"
  ];

  # pythonImportsCheck = ["crm"];

  meta = with lib; {
    description = "Delightful, open-source, work communication tool for remote teams";
    homepage = "https://github.com/frappe/crm";
    license = licenses.agpl3Only;
    maintainers = with maintainers; [blaggacao];
  };
}
