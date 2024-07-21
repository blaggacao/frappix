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
    # - pycountry~=22.3.5 not satisfied by version 23.12.11
    "pycountry"
    # - rapidfuzz~=2.15.0 not satisfied by version 3.9.1
    "rapidfuzz"
    # - python-youtube~=0.8.0 not satisfied by version 0.9.4
    "python-youtube"
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
