{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  poetry-core,
  distro,
  setuptools,
  progressbar2,
  psutil,
  pytest,
  pytest-cov,
  redis,
  pythonRelaxDepsHook,
}:
buildPythonPackage rec {
  pname = "rl-test";
  version = "0.7.13";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "RedisLabsModules";
    repo = "RLTest";
    rev = "v${version}";
    hash = "sha256-I4334560n02ZL3SY1DH246REeeR8IvzbXXEzPckHaMA=";
  };

  build-system = [
    poetry-core
    pythonRelaxDepsHook
  ];

  dependencies = [
    distro
    progressbar2
    psutil
    pytest
    pytest-cov
    redis
    setuptools
  ];
  pythonRelaxDeps = [
    # - progressbar2==4.2 not satisfied by version 4.4.2
    "progressbar2"
    # - pytest<8.0,>=7.4 not satisfied by version 8.1.1
    "pytest"
  ];

  pythonImportsCheck = [
    "RLTest"
  ];

  meta = with lib; {
    description = "Redis Labs Test Framework";
    homepage = "https://github.com/RedisLabsModules/RLTest";
    license = licenses.bsd3;
    maintainers = with maintainers; [];
  };
}
