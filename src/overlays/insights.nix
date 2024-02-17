{
  src,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  fetchFromGitHub,
  flit-core,
  pandas,
  python-telegram-bot,
  sqlalchemy,
  pythonOlder,
  pythonPackages,
  extractFrappeMeta,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    pname
    version
    format
    ;

  inherit src;

  passthru = {
    # clone url to setup local dev environment
    url = "https://github.com/frappe/insights.git";
    test-dependencies = with pythonPackages; [
    ];
  };

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  propagatedBuildInputs = [
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
