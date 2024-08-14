{
  appSources,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  flit-core,
  extractFrappeMeta,
  mkAssets,
  applyPatches,
  fetchpatch,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    format
    ; # We can't extract anything other than format because pyproject.toml does not have the information

  pname = "wiki";
  version = "3.x-dev";

  src = mkAssets (appSources.wiki
    // {
      src = applyPatches {
        inherit (appSources.wiki) src;
        name = "wiki";
        patches = [
          (fetchpatch {
            url = "https://patch-diff.githubusercontent.com/raw/frappe/wiki/pull/261.patch";
            hash = "sha256-xVXpvrvEjzSnqcRzDldMII2W7yQBxaj86T3ptK6lFnc=";
          })
        ];
      };
    });
  inherit (appSources.wiki) passthru;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  meta = with lib; {
    description = "Modern, Feature-Rich Wiki Application";
    homepage = "https://github.com/frappe/wiki";
    license = licenses.mit;
    maintainers = with maintainers; [minion3665];
  };
}
