{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  poetry-core,
}:
buildPythonPackage rec {
  pname = "json-source-map";
  version = "1.0.5";
  format = "pyproject";

  src = fetchFromGitHub {
    owner = "open-alchemy";
    repo = "json-source-map";
    rev = "v${version}";
    hash = "sha256-SmzvgywSUxrGyM+1TJlOPuOyF4SxTZBxbLI61G6752M=";
  };

  nativeBuildInputs = [
    poetry-core
  ];

  pythonImportsCheck = ["json_source_map"];

  meta = with lib; {
    description = "Calculate JSON Pointers to each value within a JSON document";
    homepage = "https://github.com/open-alchemy/json-source-map";
    changelog = "https://github.com/open-alchemy/json-source-map/blob/${src.rev}/CHANGELOG.md";
    license = licenses.mit;
    maintainers = with maintainers; [blaggacao];
  };
}
