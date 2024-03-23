{
  appSources,
  lib,
  buildPythonPackage,
  flit-core,
  pythonRelaxDepsHook,
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

  src = mkAssets appSources.webshop;
  inherit (appSources.webshop) passthru;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  # would require frappe, but since frappe is almost certainly customized,
  # we don't include it here / TODO: decide if we may actually add it?
  # pythonImportsCheck = ["webshop"];

  meta = with lib; {
    description = "Frappe webshop is an Open Source eCommerce Platform";
    homepage = "https://github.com/frappe/webshop.git";
    license = licenses.gpl3;
  };
}
