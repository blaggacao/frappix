{
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  fetchFromGitHub,
  setuptools,
  wheel,
  pyjwt,
  pyyaml,
  six,
  pyactiveresource,
  mock,
}:
buildPythonPackage rec {
  pname = "shopify-python-api";
  version = "12.3.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "Shopify";
    repo = "shopify_python_api";
    rev = "v${version}";
    hash = "sha256-VNURY+y2RHjJnUl2QmQSgNU6hOeAO5rQXbfkkSOZ+k8=";
  };

  nativeBuildInputs = [
    pythonRelaxDepsHook
    setuptools
    wheel
  ];

  nativeCheckInputs = [
    mock
  ];

  propagatedBuildInputs = [
    setuptools
    pyjwt
    pyyaml
    six
    pyactiveresource
  ];

  pythonRelaxDeps = [
    # "PyYAML"
  ];

  pythonImportsCheck = ["shopify"];
  doCheck = false;

  meta = with lib; {
    description = "ShopifyAPI library allows Python developers to programmatically access the admin section of stores";
    homepage = "https://github.com/Shopify/shopify_python_api";
    changelog = "https://github.com/Shopify/shopify_python_api/blob/${src.rev}/CHANGELOG";
    license = licenses.mit;
    maintainers = with maintainers; [];
  };
}
