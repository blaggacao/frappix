{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
  wheel,
  six,
}:
buildPythonPackage rec {
  pname = "pyactiveresource";
  version = "2.2.2";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "Shopify";
    repo = "pyactiveresource";
    rev = "v${version}";
    hash = "sha256-DvM8P+2LXKtDQ6wIPr25t5xPswLP1m7acglYibkz/A4=";
  };

  nativeBuildInputs = [
    setuptools
    wheel
    six
  ];

  pythonImportsCheck = ["pyactiveresource"];
  doCheck = false;

  meta = with lib; {
    description = "";
    homepage = "https://github.com/Shopify/pyactiveresource";
    changelog = "https://github.com/Shopify/pyactiveresource/blob/${src.rev}/CHANGELOG";
    license = licenses.mit;
    maintainers = with maintainers; [];
  };
}
