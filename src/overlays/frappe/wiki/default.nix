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
    format
    ; # We can't extract anything other than format because pyproject.toml does not have the information

  pname = "wiki";
  version = "3.x-dev";

  src = mkAssets appSources.wiki;
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
