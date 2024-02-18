{
  frappe,
  bench,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  pythonOlder,
  flit-core,
  python,
  pkgs,
  mkYarnApp,
  mkYarnOfflineCache,
  fetchYarnDeps,
  substituteAll,
  applyPatches,
  extractFrappeMeta,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    pname
    version
    format
    ;

  src = applyPatches {
    inherit (frappe) src;
    # this patch is needs to be present in all source trees,
    # such as the one used for the frontend below
    patches = [
      # Add missing unix domain socket support
      ./frappe-uds.patch
    ];
  };

  patches = [
    # make the relative path to the generator script absolute
    (substituteAll {
      src = ./frappe-website-generator.patch;
      frappe = src;
    })
  ];

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

  passthru = rec {
    packages = with pkgs; [
      mysql
      restic
      wkhtmltopdf-bin
      which # pdfkit detects wkhtmltopdf this way
      gzip # for manual backups from the frappe ui
      bash
      nodejs-18_x
      redis
    ];
    test-dependencies = with python.pkgs; [
      faker
      hypothesis
      responses
    ];
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

  propagatedBuildInputs = with python.pkgs;
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
      gitpython
      sentry-sdk
      setproctitle
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
    "GitPython"
    "Click"
    "Babel"
    "sentry-sdk"
    "setproctitle"
    "RestrictedPython"
  ];

  pythonRemoveDeps = [
    "maxminddb-geolite2"
    "psycopg2-binary"
  ];

  postInstall = ''
    mkdir -p $out/share
    install -m 0666 ${bench.src}/bench/config/templates/502.html  $out/share
    install -m 0666 ${bench.src}/bench/patches/patches.txt        $out/share
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
