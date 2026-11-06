{
  appSources,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  flit-core,
  python,
  extractFrappeMeta,
  applyPatches,
  stdenv,
  fetchYarnDeps,
  nodejs,
  yarnConfigHook,
}: let
  src = applyPatches {
    inherit (appSources.insights) src;
    name = "patched-insights";
  };

  version = appSources.insights.version;

  frontend = stdenv.mkDerivation (finalAttrs: {
    pname = "insights-frontend";
    inherit version;

    src = "${src}/frontend";

    yarnOfflineCache = fetchYarnDeps {
      yarnLock = "${finalAttrs.src}/yarn.lock";
      hash = "sha256-XcrDeF1TKN33Njwqm/CC2x/ffqBevK2wdLIfgOw2ZDU=";
    };

    nativeBuildInputs = [
      nodejs
      yarnConfigHook
    ];

    buildPhase = ''
      runHook preBuild

      substituteInPlace $TMP/frontend/vite.config.js --replace-fail "../insights/public/frontend" out/public/frontend

      substituteInPlace $TMP/frontend/package.json --replace-fail "../insights/public/frontend" out/public/frontend
      substituteInPlace $TMP/frontend/package.json --replace-fail "../insights/www" out/public/www

      runHook postBuild
    '';

    installPhase = ''
      runHook preInstall

      mkdir -p out/public/frontend
      mkdir -p out/public/www
      mkdir $out

      npm run build

      cp -R out/* $out

      runHook postInstall
    '';
  });

  insights = stdenv.mkDerivation (finalAttrs: {
    pname = "insights";
    inherit version;

    inherit src;

    yarnOfflineCache = fetchYarnDeps {
      yarnLock = "${finalAttrs.src}/yarn.lock";
      hash = "sha256-oZgyP0hTU9bxszOVg3Bmiu6yos2d2Inc1Do8To4z8GQ=";
    };

    nativeBuildInputs = [
      nodejs
      yarnConfigHook
    ];

    dontBuild = true;

    installPhase = ''
      runHook preInstall

      mkdir -p $out/insights/www

      cp -R insights/public $out/insights
      cp -R insights/www $out/insights
      cp -R node_modules $out/insights/public

      cp -R ${frontend}/public/frontend $out/insights/public

      cp -R ${frontend}/public/www/* $out/insights/www

      runHook postInstall
    '';
  });
in
  buildPythonPackage {
    inherit
      (extractFrappeMeta src)
      pname
      version
      format
      ;

    src = stdenv.mkDerivation {
      pname = "insights_";
      inherit src version;
      installPhase = ''
        mkdir $out
        cp -R . $out
        cp -R ${insights}/insights/public/node_modules $out

        cp -R ${insights}/insights/public/frontend $out/insights/public
        cp -R ${insights}/insights/www/insights.html $out/insights/www/
        cp -R ${insights}/insights/www/insights_v2.html $out/insights/www/
      '';
    };
    inherit (appSources.insights) passthru;

    nativeBuildInputs = [
      pythonRelaxDepsHook
      flit-core
    ];

    dependencies = with python.pkgs; [
      # ibis backend extras (duckdb/mysql/postgres/sqlite/clickhouse); ibis
      # imports pyarrow + pyarrow_hotfix in every backend's execute() path
      clickhouse-connect
      duckdb
      ibis-framework
      # ibis >= 10 mysql backend imports MySQLdb; needed by the after_migrate
      # hook, which connects to the "Site DB" data source via ibis.mysql
      mysqlclient
      packaging
      pandas
      psycopg
      pyarrow
      pyarrow-hotfix
      python-telegram-bot
      sqlalchemy
      sqlglot
    ];

    pythonImportsCheck = [
      "insights"
      "ibis.backends.clickhouse"
      "ibis.backends.duckdb"
      "ibis.backends.mysql"
      "ibis.backends.postgres"
      "ibis.backends.sqlite"
    ];

    pythonRelaxDeps = [
      "duckdb"
      "ibis-framework"
      "pandas"
      "python-telegram-bot"
      "sqlalchemy"
      "sqlglot"
    ];

    meta = with lib; {
      description = "Free and Open Source Data Analytics Tool for your Frappe Apps";
      homepage = "https://github.com/frappe/insights";
      license = licenses.agpl3Only;
      maintainers = with maintainers; [blaggacao];
    };
  }
