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

  src = mkAssets (appSources.gameplan
    // {
      src = applyPatches {
        inherit (appSources.gameplan) src;
        name = "gameplan-prod";
        patches = [
          ./gameplan-0001-build-socket-port-is-reverse-proxied.patch
          # https://github.com/frappe/gameplan/pull/278
          ./gameplan-0001-revert-re-enable-workspaces.patch
        ];
      };
    });
  inherit (appSources.gameplan) passthru;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  propagatedBuildInputs = with python.pkgs; [
    rembg
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
