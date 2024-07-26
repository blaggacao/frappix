{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  cargo,
  rustPlatform,
  rustc,
  mkdocs,
  mkdocs-material,
  mypy,
  pytest,
  ruff,
}:
buildPythonPackage rec {
  pname = "uuid-utils";
  version = "0.9.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "aminalaee";
    repo = "uuid-utils";
    rev = version;
    hash = "sha256-DIXE/enhTxRWRESaOsjLk706RypIpXUKE/4KZ5vU9Uc=";
  };

  cargoDeps = rustPlatform.importCargoLock {
    lockFile = ./Cargo.lock;
  };

  build-system = [
    cargo
    rustPlatform.cargoSetupHook
    rustPlatform.maturinBuildHook
    rustc
  ];

  dependencies = [
    mkdocs
    mkdocs-material
    mypy
    pytest
    ruff
  ];

  pythonImportsCheck = [
    "uuid_utils"
  ];

  meta = with lib; {
    description = "Python bindings to Rust UUID";
    homepage = "https://github.com/aminalaee/uuid-utils";
    license = licenses.bsd3;
    maintainers = with maintainers; [];
  };
}
