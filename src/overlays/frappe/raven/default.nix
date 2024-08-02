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
  fetchpatch,
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
          (fetchpatch {
            url = "https://patch-diff.githubusercontent.com/raw/The-Commit-Company/Raven/pull/989.patch";
            hash = "sha256-nst92Mr8wQQG4WdRPoGYLLFTJ/cRHarkGHNuYB3O8xE=";
          })
          (fetchpatch {
            url = "https://patch-diff.githubusercontent.com/raw/The-Commit-Company/Raven/pull/990.patch";
            hash = "sha256-DLambvibZQoKcuQuP3wlI0sNfrMa0zojhmiXuhBAkiE=";
          })
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
