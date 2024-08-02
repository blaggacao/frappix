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

  src = mkAssets (appSources.drive
    // {
      src = applyPatches {
        inherit (appSources.drive) src;
        name = "drive"; # this is a constant consumed by frontend/package.json's copy-html-entry
        patches = [
          (fetchpatch {
            url = "https://patch-diff.githubusercontent.com/raw/frappe/drive/pull/231.patch";
            hash = "sha256-hgiVnxqUOFE796hnv6dinPbaUKkB9MgRhj4IqMV6vhI=";
          })
          (fetchpatch {
            url = "https://patch-diff.githubusercontent.com/raw/frappe/drive/pull/232.patch";
            hash = "sha256-WQQNey0Nos3q7pjy0cr2abpo00gDQ9baPGnVXT9h5qU=";
          })
        ];
      };
    });
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
