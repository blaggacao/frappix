{
  lib,
  fetchpatch,
  applyPatches,
  buildPythonPackage,
  pythonRelaxDepsHook,
  fetchFromGitHub,
  flit-core,
  barcodenumber,
  gocardless-pro,
  googlemaps,
  holidays,
  plaid-python,
  pycountry,
  pypng,
  python-youtube,
  rapidfuzz,
  tweepy,
  unidecode,
  pythonOlder,
  pythonPackages,
  mkYarnApp,
  mkYarnOfflineCache,
  fetchYarnDeps,
}: let
  inherit (builtins) readFile match fromTOML head replaceStrings;

  pyproject = fromTOML (readFile (src + /pyproject.toml));
  init = readFile (src + "/${pname}/__init__.py");

  m1 = match ''.*__version__ = ["|']([^("|')]+).*'' init;
  m2 = match ''^>=([0-9\.]+)'' pyproject.project.requires-python;

  format = "pyproject";
  version = replaceStrings ["-"] ["."] ((head m1) + "0"); # avoid version number normalization followed by a failing pythonRelaxDepsHook
  pname = pyproject.project.name;
  disabled = pythonOlder (head m2);

  src = applyPatches {
    src = fetchFromGitHub {
      owner = "frappe";
      repo = "erpnext";
      rev = "e64b004eca86255159c799d9b47f36a75fe70ba0";
      hash = "sha256-hn5fCAbwNIAjhi9mvzYX4KWTopt3tn3FwuqsCHMBtVA=";
    };

    patches = [
      (fetchpatch {
        name = "update-plaid-python.patch";
        url = "https://github.com/frappe/erpnext/pull/36245.patch";
        sha256 = "sha256-fNpJCuwFhxbEcu9E1uS+DFOPm+Y9cUBJtu+kmhRt+Ak=";
      })
    ];
  };
in
  buildPythonPackage rec {
    inherit
      src
      pname
      version
      format
      disabled
      ;

    nativeBuildInputs = [
      pythonRelaxDepsHook
      flit-core
    ];

    passthru = {
      # clone url to setup local dev environment
      url = "https://github.com/frappe/erpnext.git";
      test-dependencies = with pythonPackages; [
      ];
      frontend = let
        yarnLock = "${src}/yarn.lock";
        # # w/o IFD
        # offlineCache = fetchYarnDeps {
        #   inherit yarnLock;
        #   hash = "";
        # };
        # w/  IFD
        offlineCache = mkYarnOfflineCache {inherit yarnLock;};
      in
        mkYarnApp pname src offlineCache;
    };

    propagatedBuildInputs = [
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
