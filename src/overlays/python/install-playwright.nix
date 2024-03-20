{
  lib,
  buildPythonPackage,
  fetchPypi,
  poetry-core,
  playwright,
}:
buildPythonPackage rec {
  pname = "install-playwright";
  version = "0.0.1";
  pyproject = true;

  src = fetchPypi {
    pname = "install_playwright";
    inherit version;
    hash = "sha256-ESLNSsY3iOc/OrAtg2bgVsrm//Fx24W2Tlkl+Nb6Syk=";
  };

  nativeBuildInputs = [
    poetry-core
  ];

  propagatedBuildInputs = [
    playwright
  ];

  pythonImportsCheck = ["install_playwright"];

  meta = with lib; {
    description = "Execute `playwright install` from Python";
    homepage = "https://pypi.org/project/install_playwright/";
    license = licenses.mit;
    maintainers = with maintainers; [];
  };
}
