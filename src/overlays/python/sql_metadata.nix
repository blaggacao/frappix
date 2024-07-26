{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  poetry-core,
  sqlparse,
}:
buildPythonPackage rec {
  pname = "sql_metadata";
  version = "2.12.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "macbre";
    repo = "sql-metadata";
    rev = "v${version}";
    hash = "sha256-oY/EJ1RdMvMrZksAcaMATIVuBvUkqI6x9cL9iGcZ8Eo=";
  };

  build-system = [
    poetry-core
  ];

  dependencies = [
    sqlparse
  ];

  pythonImportsCheck = [
    "sql_metadata"
  ];

  meta = with lib; {
    description = "Uses tokenized query returned by python-sqlparse and generates query metadata";
    homepage = "https://github.com/macbre/sql-metadata";
    license = licenses.mit;
    maintainers = with maintainers; [];
  };
}
