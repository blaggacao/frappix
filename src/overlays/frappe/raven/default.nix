{
  appSources,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  flit-core,
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

  src = mkAssets (appSources.raven
    // {
      src = applyPatches {
        inherit (appSources.raven) src;
        name = "raven-prod";
        patches = [
          ./raven-pr1064-fix-return-type.patch
        ];
      };
    });
  inherit (appSources.raven) passthru;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  propagatedBuildInputs = with python.pkgs; [
    linkpreview
  ];

  # pythonRemoveDeps = [
  #   "rembg" # TODO: package
  # ];

  # pythonImportsCheck = ["gameplan"];

  meta = with lib; {
    description = "Simple, open source team messaging platform";
    homepage = "https://github.com/The-Commit-Company/Raven";
    license = licenses.agpl3Only;
    maintainers = with maintainers; [blaggacao];
  };
}
