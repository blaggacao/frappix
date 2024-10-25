{
  appSources,
  lib,
  buildPythonPackage,
  pythonRelaxDepsHook,
  flit-core,
  python,
  pkgs,
  extractFrappeMeta,
  mkAssets,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    pname
    version
    format
    ;

  src = mkAssets appSources.frappe;
  passthru =
    appSources.frappe.passthru
    // {
      packages = with pkgs; [
        mysql
        restic
        wkhtmltopdf-bin
        which # pdfkit detects wkhtmltopdf this way
        gzip # for manual backups from the frappe ui
        bash
        nodejs_20
        redis
      ];
      test-dependencies = with python.pkgs; [
        faker
        hypothesis
        responses
        freezegun
      ];
    };

  nativeBuildInputs = [
    pythonRelaxDepsHook
    flit-core
  ];

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
      pydantic
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
      tomli
      uuid-utils
      vobject
      sql_metadata
    ]
    ++ passthru.packages;

  # NIX_DEBUG = 6;

  pythonRelaxDeps = [
    # - babel~=2.12.1 not satisfied by version 2.14.0
    "babel"
    # - filelock~=3.8.0 not satisfied by version 3.13.4
    "filelock"
    # - pillow~=10.2.0 not satisfied by version 10.3.0
    "pillow"
    # - pymysql==1.1.0 not satisfied by version 1.1.1
    "pymysql"
    # - pypdf~=3.17.0 not satisfied by version 4.1.0
    "pypdf"
    # - restrictedpython~=6.2 not satisfied by version 7.1
    "restrictedpython"
    # - weasyprint==59.0 not satisfied by version 61.2
    "weasyprint"
    # - bleach~=6.0.0 not satisfied by version 6.1.0
    "bleach"
    # - cairocffi==1.5.1 not satisfied by version 1.6.1
    "cairocffi"
    # - chardet~=5.1.0 not satisfied by version 5.2.0
    "chardet"
    # - croniter~=1.4.1 not satisfied by version 2.0.5
    "croniter"
    # - ipython~=8.15.0 not satisfied by version 8.24.0
    "ipython"
    # - phonenumbers==8.13.13 not satisfied by version 8.13.34
    "phonenumbers"
    # - pyopenssl~=24.0.0 not satisfied by version 24.1.0
    "pyopenssl"
    # - pydantic==2.3.0 not satisfied by version 2.6.3
    "pydantic"
    # - pyotp~=2.8.0 not satisfied by version 2.9.0
    "pyotp"
    # - python-dateutil~=2.8.2 not satisfied by version 2.9.0.post0
    "python-dateutil"
    # - pytz==2023.3 not satisfied by version 2024.1k
    "pytz"
    # - rauth~=0.7.3 not satisfied by version 0.7.2
    "rauth"
    # - redis~=4.5.5 not satisfied by version 5.0.3
    "redis"
    # - hiredis~=2.2.3 not satisfied by version 2.3.2
    "hiredis"
    # - rq~=1.15.1 not satisfied by version 1.16.2
    "rq"
    # - sentry-sdk~=1.37.1 not satisfied by version 1.45.0
    "sentry-sdk"
    # - sqlparse~=0.4.4 not satisfied by version 0.5.0
    "sqlparse"
    # - markdownify~=0.11.6 not satisfied by version 0.12.1
    "markdownify"
    # - boto3~=1.28.10 not satisfied by version 1.34.58
    "boto3"
    # - dropbox~=11.36.2 not satisfied by version 12.0.0
    "dropbox"
    # - google-api-python-client~=2.2.0 not satisfied by version 2.126.0
    "google-api-python-client"
    # - google-auth-oauthlib~=0.4.4 not satisfied by version 1.2.0
    "google-auth-oauthlib"
    # - google-auth~=1.29.0 not satisfied by version 2.29.0
    "google-auth"
    # - posthog~=3.0.1 not satisfied by version 3.5.0
    "posthog"
    # - pydyf==0.10.0 not satisfied by version 0.9.0
    "pydyf"
    # - cssutils~=2.9.0 not satisfied by version 2.10.2
    "cssutils"
    # - gunicorn~=22.0.0 not satisfied by version 21.2.0
    "gunicorn"
    # - requests~=2.32.0 not satisfied by version 2.31.0
    "requests"
    # - sql_metadata~=2.11.0 not satisfied by version 2.12.0
    "sql_metadata"
    # - uuid-utils~=0.6.1 not satisfied by version 0.9.0
    "uuid-utils"
    # - cryptography~=43.0.1 not satisfied by version 42.0.5
    "cryptography"
  ];

  pythonRemoveDeps = [
    "maxminddb-geolite2"
    "psycopg2-binary"
  ];

  postInstall = ''
    mkdir -p $out/share
    install -m 0666 ${appSources.bench.src}/bench/config/templates/502.html  $out/share
    install -m 0666 ${appSources.bench.src}/bench/patches/patches.txt        $out/share
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
