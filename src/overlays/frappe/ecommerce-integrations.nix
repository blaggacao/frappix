{
  appSources,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  flit-core,
  python,
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

  src = mkAssets appSources.ecommerce-integrations;
  inherit (appSources.ecommerce-integrations) passthru;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  propagatedBuildInputs = with python.pkgs; [
    shopify-python-api
    boto3
  ];

  pythonRelaxDeps = [
    # "shopify-python-api"
    "boto3"
  ];

  # would require frappe, but since frappe is almost certainly customized,
  # we don't include it here / TODO: decide if we may actually add it?
  # pythonImportsCheck = ["erpnext"];

  meta = with lib; {
    description = "Ecommerce integrations for ERPNext";
    homepage = "https://github.com/frappe/ecommerce_integrations";
    license = licenses.gpl3Only;
    maintainers = with maintainers; [blaggacao];
  };
}
