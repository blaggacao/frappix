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
    # github errors on tag fetch:
    # the given path has multiple possibilities: #<Git::Ref:0x00007fede9e7f5c0>, #<Git::Ref:0x00007fede9e7eda0>
    rev = "e609d844ebace603f74bc5f0a67e9eafe7fb25e1";
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
