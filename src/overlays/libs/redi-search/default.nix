{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
  git,
  boost,
  pkg-config,
  automake,
  m4,
  python3,
  bash,
  redis,
  # ./sbin/system-setup.py - not sure if needed
  # gawk,
  # jq,
  # openssl,
  # rsync,
  # unzip,
  # patch,
  # psmisc,
  # libtool,
  # libatomic_ops,
  # bintools,
}: let
  cpu-features = fetchFromGitHub {
    owner = "google";
    repo = "cpu_features";
    rev = "438a66e41807cd73e0c403966041b358f5eafc68";
    hash = "sha256-S1Qn+RHFL2/lOFz5JUxm7iWwswlM6kTYSa1DT2ztthk=";
  };
  # rejson = fetchFromAWS {};
in
  stdenv.mkDerivation rec {
    pname = "redi-search";
    version = "2.8.13";

    src = fetchFromGitHub {
      owner = "RediSearch";
      repo = "RediSearch";
      rev = "v${version}";
      hash = "sha256-UF/bLYXgIft2k6XsGrxW5HeccUuNighnCYxUIYYnFB4=";
      fetchSubmodules = true;
    };

    patches = [
      ./cmake-fixes.patch
    ];

    postPatch = ''
      substituteInPlace deps/VectorSimilarity/cmake/cpu_features.cmake \
        --subst-var-by cpu_features "${cpu-features}"
    '';

    dontUseCmakeConfigure = true;

    env = {
      VERBOSE = 1;
    };

    makeFlags = [
      "BOOST_DIR=${boost.dev}/include"
      "NO_TESTS=1" # reduce deps
      "REJSON=0"
    ];

    nativeBuildInputs = [
      cmake
      git
      pkg-config
    ];

    hardeningEnable = ["fortify" "stackprotector" "pic"];

    buildInputs = [
      automake
      m4
      # libtool
      # libatomic_ops
      # bintools
      # ./sbin/system-setup.py - not sure if needed
      # gawk
      # jq
      # openssl
      # rsync
      # unzip
      # patch
      # psmisc
    ];
    preConfigure = ''
      substituteInPlace $(grep -rl '^#!/' .) \
        --replace-quiet '#!/bin/bash'            '#!${bash}/bin/bash' \
        --replace-quiet '#!/bin/sh'              '#!${bash}/bin/bash' \
        --replace-quiet '#!/usr/bin/env bash'    '#!${bash}/bin/bash' \
        --replace-quiet '#!/usr/bin/env python3' '#!${python3}/bin/python3' \
        --replace-quiet '#!/usr/bin/env python'  '#!${python3}/bin/python3'
    '';

    # strip debug symbbols manually
    postBuild = ''
      strip -g bin/linux-x64-release/search/redisearch.so
    '';

    installPhase = ''
      mkdir -p "$out/lib"
      install -Dm755 bin/linux-x64-release/search/redisearch.so "$out/lib"
    '';

    # doCheck = true; # runs make test
    # tests run in principle, but many network failures
    doCheck = false;
    checkInputs = [
      (python3.withPackages
        (ps: [
          (ps.callPackage ./rl-test.nix {})
          # src/tests/pytests/requirements.txt
          ps.numpy
          ps.scipy
          ps.deepdiff
          ps.redis
          ps.gevent
          ps.faker
          ps.packaging
        ]))
      redis
    ];

    meta = with lib; {
      description = "A query and indexing engine for Redis, providing secondary indexing, full-text search, vector similarity search and aggregations";
      homepage = "https://github.com/RediSearch/RediSearch";
      # https://redis.io/legal/rsalv2-agreement/
      license = licenses.unfree; # FIXME: nix-init did not find a license
      maintainers = with maintainers; [];
      mainProgram = "redi-search";
      platforms = platforms.all;
    };
  }
