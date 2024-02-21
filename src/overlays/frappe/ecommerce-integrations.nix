{
  ecommerce-integrations,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  fetchFromGitHub,
  flit-core,
  pythonOlder,
  python,
  extractFrappeMeta,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    pname
    version
    format
    ;

  inherit (ecommerce-integrations) src;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  propagatedBuildInputs = with python.pkgs; [
    shopify-python-api
    boto
  ];

  pythonRelaxDeps = [
    # "shopify-python-api"
    "boto"
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
