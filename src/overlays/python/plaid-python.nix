{
  lib,
  buildPythonPackage,
  fetchPypi,
  setuptools,
  wheel,
  nulltype,
  python-dateutil,
  urllib3,
  requests,
}:
buildPythonPackage rec {
  pname = "plaid-python";
  version = "7.2.1";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-ryrTJug3fIyG2XGE9gwL5BzXH1B1IB39szMcyF1N5RM=";
  };

  nativeBuildInputs = [
    setuptools
    wheel
  ];

  propagatedBuildInputs = [
    nulltype
    python-dateutil
    urllib3
    requests
  ];

  pythonImportsCheck = ["plaid"];

  meta = with lib; {
    description = "Python client library for the Plaid API and Link";
    homepage = "https://pypi.org/project/plaid-python/";
    license = licenses.mit;
    maintainers = with maintainers; [];
  };
}
