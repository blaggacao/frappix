{
  appSources,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  flit-core,
  python,
  extractFrappeMeta,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    pname
    version
    format
    ;

  inherit (appSources.insights) src passthru;

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  propagatedBuildInputs = with python.pkgs; [
    pandas
    python-telegram-bot
    sqlalchemy
  ];

  pythonImportsCheck = ["insights"];

  pythonRelaxDeps = [
    "python-telegram-bot"
    "SQLAlchemy"
    "pandas"
  ];

  meta = with lib; {
    description = "Free and Open Source Data Analytics Tool for your Frappe Apps";
    homepage = "https://github.com/frappe/insights";
    license = licenses.agpl3Only;
    maintainers = with maintainers; [blaggacao];
  };
}
