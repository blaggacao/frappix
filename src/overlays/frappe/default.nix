{
  lib,
  fetchFromGitHub,
  fetchpatch,
  applyPatches,
  buildPythonPackage,
  pythonRelaxDepsHook,
  pythonOlder,
  flit-core,
  pythonPackages,
  # bin tools
  mysql, # mysqldump
  restic, # backups
  wkhtmltopdf-bin, # pdf, old style
  nodejs-18_x,
  mkYarnApp,
  mkYarnOfflineCache,
  fetchYarnDeps,
}: let
  inherit (builtins) readFile match fromTOML head replaceStrings;

  pyproject = fromTOML (readFile (src + /pyproject.toml));
  init = readFile (src + "/${pname}/__init__.py");

  m1 = match ''.*__version__ = ["|']([^("|')]+).*'' init;
  m2 = match ''^>=([0-9\.]+)'' pyproject.project.requires-python;

  format = "pyproject";
  version = replaceStrings ["-"] ["."] ((head m1) + "0"); # avoid version number normalization followed by a failing pythonRelaxDepsHook
  pname = pyproject.project.name;
  disabled = pythonOlder (head m2);

  benchSrc = fetchFromGitHub {
    owner = "frappe";
    repo = "bench";
    rev = "5a2c052b9bee0a7d7e6247ed7e07d83274662960";
    hash = "sha256-mGHD/HVhR71TT9wahX6B4JsACrbNuiofWirbTnK6zS4=";
  };
  src = applyPatches {
    src = fetchFromGitHub {
      owner = "frappe";
      repo = "frappe";
      rev = "59e1db7bb58e155744f9a2e7912fd233f9fac981";
      hash = "sha256-L7kj//zYKkDKrBoDbjLzaKA32QNNPaSgnLm7sNJbfjY=";
    };
    patches = [
      (fetchpatch {
        name = "enable-sockets.patch";
        url = "https://github.com/frappe/frappe/pull/21974.patch";
        sha256 = "sha256-7S/fmkf0TOAe2chA0+Ab7wSpWO2D1M6XXGreMfnl928=";
      })
      (fetchpatch {
        name = "explicit-appsource-accessor.patch";
        url = "https://github.com/frappe/frappe/pull/21873.patch";
        sha256 = "sha256-eHIpe4iECgWXAPbUzm3fa6FSxQAt7ihQ8pECudnVT+I=";
      })
      (fetchpatch {
        name = "direct-apppath-accessor.patch";
        url = "https://github.com/frappe/frappe/pull/21874.patch";
        sha256 = "sha256-5PwB/7EoDUXughm3aWBbMtLRL7RAHBXQbZNU5ZkrGHs=";
      })
      (fetchpatch {
        name = "fix-app-command-discovery.patch";
        url = "https://github.com/frappe/frappe/pull/21975.patch";
        sha256 = "sha256-xIFoA4xKjIq1szrJXtAoh61GWv9ukB26p19dJyBWaE0=";
      })
      (fetchpatch {
        name = "fix-site-url-in-tests.patch";
        url = "https://github.com/frappe/frappe/pull/21870/commits/2d5b1217a6e3b90c36eb11f21f01e276ba41f6f8.patch";
        sha256 = "sha256-rFlkPegKlyChLSPmarsG1G71grxPfCIGWHk7kmrJ11M=";
      })
      ./0001-feat-db-boostrap-only-option-if-resource-management-.patch
    ];
  };
in
  buildPythonPackage rec {
    inherit
      src
      pname
      version
      format
      disabled
      ;

    nativeBuildInputs = [
      pythonRelaxDepsHook
      flit-core
    ];

    passthru = rec {
      packages = [
        mysql
        restic
        wkhtmltopdf-bin
      ];
      test-dependencies = with pythonPackages; [
        faker
        hypothesis
        responses
      ];
      node = nodejs-18_x;
      mariadb = mysql;
      # clone url to setup local dev environment
      url = "https://github.com/frappe/frappe.git";
      websocket = frontend + /share/apps/frappe/socketio.js;
      frontend = let
        yarnLock = "${src}/yarn.lock";
        # # w/o IFD
        # offlineCache = fetchYarnDeps {
        #   inherit yarnLock;
        #   hash = "";
        # };
        # w/  IFD
        offlineCache = mkYarnOfflineCache {inherit yarnLock;};
      in
        mkYarnApp pname src offlineCache;
    };

    propagatedBuildInputs = with pythonPackages;
      [
        babel
        beautifulsoup4
        bleach
        bleach-allowlist
        boto3
        cairocffi
        chardet
        click
        croniter
        cryptography
        dropbox
        email-reply-parser
        filelock
        filetype
        ipython
        gitpython
        git-url-parse
        google-api-python-client
        google-auth
        google-auth-oauthlib
        gunicorn
        hiredis
        html5lib
        ipython
        jinja2
        ldap3
        markdown2
        markdownify
        markupsafe
        maxminddb #-geolite2
        num2words
        oauthlib
        openpyxl
        passlib
        pdfkit
        phonenumbers
        pillow
        posthog
        premailer
        psutil
        psycopg2 # -binary
        pycryptodome
        pydantic_2
        pyjwt
        pymysql
        pyopenssl
        pyotp
        pypika
        pypdf
        pyqrcode
        python-dateutil
        pytz
        pyyaml
        rauth
        redis
        requests
        requests-oauthlib
        restrictedpython
        rq
        rsa
        semantic-version
        sqlparse
        tenacity
        terminaltables
        traceback-with-variables
        weasyprint
        werkzeug
        whoosh
        xlrd
        zxcvbn
      ]
      ++ passthru.packages;

    # NIX_DEBUG = 6;

    pythonRelaxDeps = [
      "pycryptodome" #             ask: 3.18.0  is: 3.17.0
      "boto3" #                    ask: 1.18.49 is: 1.26.79
      "pypdf" #                    ask: 3.9.1   is: 3.5.2
      "google-api-python-client" # ask: 2.2.0   is: 2.88.0
      "google-auth" #              ask: 1.29.0  is: 2.19.1
      "ipython" #                  ask: 8.10.0  is: 8.11.0
      "pyOpenSSL" #                ask: 23.2.0  is: 23.1.1
      "redis" #                    ask: 4.5.5   is: 4.5.4
      "cryptography" #             ask: 41.0.1  is: 40.0.1
      "Werkzeug" #                 ask: 2.3.4   is: 2.2.3
      "bleach" #                   ask: 3.3.0   is: 6.0.0
      "cairocffi" #                ask: 1.5.1   is: 1.4.0
      "croniter" #                 ask: 1.3.15  is: 1.4.1
      "pydantic" #                 ask: 2.0     is: 2.0.2   nixpkgs: 1.10.9
      "filelock" #                 ask: 3.8.0   is: 3.12.0
      "Pillow" #                   ask: 9.5.0   is: 9.4.0
      "premailer" #                ask: 3.8.0   is: 3.10.0
      "PyMySQL" #                  ask: 1.0.3   is: 1.0.2
      "rauth" #                    ask: 0.7.3   is: 0.7.2
      "phonenumbers" #             ask: 8.13.13 is: ?????
      "PyYAML"
      "gunicorn"
      "PyJWT"
    ];

    pythonRemoveDeps = [
      "maxminddb-geolite2"
      "psycopg2-binary"
    ];

    postInstall = ''
      mkdir -p $out/share
      install -m 0666 ${benchSrc}/bench/config/templates/502.html  $out/share
      install -m 0666 ${benchSrc}/bench/patches/patches.txt        $out/share
    '';

    # has no tests
    doCheck = false;

    pythonImportsCheck = ["frappe"];

    meta = with lib; {
      homepage = "https://github.com/frappe/frappe";
      description = "Low code web framework for real world applications, in Python and Javascript";
      changelog = "https://github.com/frappe/frappe/releases/tag/v${version}";
      license = licenses.mit;
      maintainers = with maintainers; [];
    };
  }
