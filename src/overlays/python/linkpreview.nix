{
  lib,
  buildPythonPackage,
  fetchPypi,
  setuptools,
  wheel,
  beautifulsoup4,
  requests,
}:
buildPythonPackage rec {
  pname = "linkpreview";
  version = "0.9.0";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-9aHxeJU1AfF/YGAV6XkkW7qA4NY+5MqnnqYly/UkFe8=";
  };

  build-system = [
    setuptools
    wheel
  ];

  dependencies = [
    beautifulsoup4
    requests
  ];

  pythonImportsCheck = [
    "linkpreview"
  ];

  meta = with lib; {
    description = "Get link (URL) preview";
    homepage = "https://pypi.org/project/linkpreview/";
    license = licenses.mit;
    maintainers = with maintainers; [];
  };
}
