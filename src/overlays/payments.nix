{
  src,
  lib,
  buildPythonPackage,
  flit-core,
  pythonRelaxDepsHook,
  braintree,
  paytmchecksum,
  pycryptodome,
  razorpay,
  stripe,
  pythonOlder,
  pythonPackages,
  mkYarnApp,
  mkYarnOfflineCache,
  fetchYarnDeps,
  extractFrappeMeta,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    pname
    version
    format
    ;

  inherit src;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  passthru = {
    # clone url to setup local dev environment
    url = "https://github.com/frappe/payments.git";
    # ---
    # no front-end component at the time of packaging
    # ---
    # test-dependencies = with pythonPackages; [
    # ];
    # frontend = let
    #   yarnLock = "${src}/yarn.lock";
    #   # # w/o IFD
    #   # offlineCache = fetchYarnDeps {
    #   #   inherit yarnLock;
    #   #   hash = "";
    #   # };
    #   # w/  IFD
    #   offlineCache = mkYarnOfflineCache {inherit yarnLock;};
    # in
    #   mkYarnApp pname src offlineCache;
  };

  propagatedBuildInputs = [
    braintree
    paytmchecksum
    pycryptodome
    razorpay
    stripe
  ];

  pythonRelaxDeps = [
    "braintree"
    "pycryptodome"
    "stripe"
    "razorpay"
    "paytmchecksum"
  ];

  # would require frappe, but since frappe is almost certainly customized,
  # we don't include it here / TODO: decide if we may actually add it?
  # pythonImportsCheck = ["payments"];

  meta = with lib; {
    description = "Payments app for frappe";
    homepage = "https://gitlab.com/pristina/sistema/payments.git";
    license = licenses.mit;
    maintainers = with maintainers; [];
  };
}
