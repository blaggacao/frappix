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

  src = mkAssets appSources.erpnext;
  inherit (appSources.erpnext) passthru;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  propagatedBuildInputs = with python.pkgs; [
    barcodenumber
    gocardless-pro
    googlemaps
    holidays
    plaid-python
    pycountry
    pypng
    python-youtube
    rapidfuzz
    tweepy
    unidecode
  ];

  pythonRelaxDeps = [
    "gocardless-pro"
    "vrp-cli"
    "python-youtube"
    "rapidfuzz"
    "pypng"
    "tweepy"
    "plaid-python"
    "holidays"
  ];

  # would require frappe, but since frappe is almost certainly customized,
  # we don't include it here / TODO: decide if we may actually add it?
  # pythonImportsCheck = ["erpnext"];

  meta = with lib; {
    description = "Free and Open Source Enterprise Resource Planning (ERP";
    homepage = "https://github.com/frappe/erpnext";
    license = licenses.gpl3Only;
    maintainers = with maintainers; [blaggacao];
  };
}
