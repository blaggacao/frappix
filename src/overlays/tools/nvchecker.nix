{
  lib,
  platformdirs,
  buildPythonPackage,
  docutils,
  fetchFromGitHub,
  flaky,
  installShellFiles,
  pycurl,
  pytest-asyncio,
  pytest-httpbin,
  pytestCheckHook,
  pythonOlder,
  setuptools,
  structlog,
  tomli,
  tornado,
}:
buildPythonPackage rec {
  pname = "nvchecker";
  version = "2.17dev-nix2";
  pyproject = true;

  disabled = pythonOlder "3.8";

  src = fetchFromGitHub {
    owner = "blaggacao";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-EOOUS9k/YPe+Y6eaTLxwCuI0MDR/z4WvQ7ARAuU3Q+w=";
  };

  nativeBuildInputs = [
    setuptools
    docutils
    installShellFiles
  ];

  propagatedBuildInputs =
    [
      structlog
      platformdirs
      tornado
      pycurl
    ]
    ++ lib.optionals (pythonOlder "3.11") [
      tomli
    ];

  __darwinAllowLocalNetworking = true;
  doCheck = false;

  nativeCheckInputs = [
    flaky
    pytest-asyncio
    pytest-httpbin
    pytestCheckHook
  ];

  postBuild = ''
    patchShebangs docs/myrst2man.py
    make -C docs man
  '';

  postInstall = ''
    installManPage docs/_build/man/nvchecker.1
  '';

  pythonImportsCheck = [
    "nvchecker"
  ];

  pytestFlagsArray = [
    "-m 'not needs_net'"
  ];

  meta = with lib; {
    description = "New version checker for software (with nix writer)";
    homepage = "https://github.com/lilydjwg/nvchecker";
    changelog = "https://github.com/lilydjwg/nvchecker/releases/tag/v${version}";
    license = licenses.mit;
    maintainers = with maintainers; [marsam];
  };
}
