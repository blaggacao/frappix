{
  fetchFromGitHub,
  fetchpatch,
  lib,
  stdenv,
  double-conversion,
  re-flex,
  gperftools,
  c-ares,
  rapidjson,
  liburing,
  xxHash,
  gbenchmark,
  pugixml,
  glog,
  gtest,
  jemalloc,
  gcc-unwrapped,
  autoconf,
  autoconf-archive,
  automake,
  cmake,
  ninja,
  boost,
  libunwind,
  libtool,
  openssl,
  libxml2,
  bison,
  zstd,
  lz4,
  abseil-cpp,
  hnswlib,
  fast-float,
  flatbuffers,
}: let
  pname = "dragonflydb";
  version = "1.20.1";

  src = fetchFromGitHub {
    owner = pname;
    repo = "dragonfly";
    rev = "v${version}";
    hash = "sha256-2sipIhyrxMEPonQhDW3AGMx9S3i15mde+Daw29MEqaQ=";
    fetchSubmodules = true;
  };

  mimalloc = fetchFromGitHub {
    owner = "microsoft";
    repo = "mimalloc";
    rev = "v2.1.6";
    hash = "sha256-Ff3+RP+lAXCOeHJ87oG3c02rPP4WQIbg5L/CVe6gA3M=";
  };

  # Needed exactly 5.4.4 for patch to work
  lua = fetchFromGitHub {
    owner = pname;
    repo = "lua";
    rev = "0c33948bc087853b6b5b4290fe01d03d8f3d276c"; # current head of branch: Dragonfly-5.4.6a
    hash = "sha256-uLNe+hLihu4wMW/wstGnYdPa2bGPC5UiNE+VyNIYY2c=";
  };

  jsoncons = fetchFromGitHub {
    owner = pname;
    repo = "jsoncons";
    rev = "e193eae1a4455bc131f0b2131c2e6c27f08979e7"; # current head of branch: Dragonfly
    hash = "sha256-uMFWwAg59xOXACCe1h5tWeLp3yR4r67juMrJGYVtf5k=";
  };

  croncpp = fetchFromGitHub {
    owner = "mariusbancila";
    repo = "croncpp";
    rev = "v2023.03.30";
    hash = "sha256-SBjNzy54OGEMemBp+c1gaH90Dc7ySL915z4E64cBWTI=";
  };
  uni-algo = fetchFromGitHub {
    owner = "uni-algo";
    repo = "uni-algo";
    rev = "v1.0.0";
    hash = "sha256-0yoreY0ckgvHbXHw35ZLOxr4gPCWdZtK8ydl5voeEoQ=";
  };
in
  stdenv.mkDerivation {
    inherit pname version src;

    prePatch = ''
      mkdir -p ./build/{third_party,_deps} ./build/third_party/cares

      ln -s ${jsoncons} ./build/third_party/jsoncons
      ln -s ${rapidjson.src} ./build/third_party/rapidjson
      ln -s ${pugixml.src} ./build/third_party/pugixml
      ln -s ${hnswlib.src} ./build/third_party/hnswlib
      ln -s ${fast-float.src} ./build/third_party/fast_float
      ln -s ${flatbuffers.src} ./build/third_party/flatbuffers
      ln -s ${croncpp} ./build/third_party/croncpp
      ln -s ${uni-algo} ./build/third_party/uni-algo
      ln -s ${gtest.src} ./build/_deps/gtest-src
      ln -s ${gbenchmark.src} ./build/_deps/benchmark-src

      tar xvf ${c-ares.src} --strip-components=1 -C ./build/third_party/cares

      cp -R --no-preserve=mode,ownership ${double-conversion.src} ./build/third_party/dconv
      cp -R --no-preserve=mode,ownership ${lz4.src} ./build/third_party/lz4
      cp -R --no-preserve=mode,ownership ${gperftools.src} ./build/third_party/gperf
      cp -R --no-preserve=mode,ownership ${liburing.src} ./build/third_party/uring
      cp -R --no-preserve=mode,ownership ${xxHash.src} ./build/third_party/xxhash
      cp -R --no-preserve=mode,ownership ${mimalloc} ./build/third_party/mimalloc
      cp -R --no-preserve=mode,ownership ${glog.src} ./build/_deps/glog-src
      chmod u+x ./build/third_party/uring/configure
      cp ./build/third_party/xxhash/cli/xxhsum.{1,c} ./build/third_party/xxhash
    '';
    # cp -R --no-preserve=mode,ownership ${glog.src} ./build/_deps/glog-src

    patches = [
      ./cmake-fixes.patch
      (fetchpatch {
        name = "apply-abseil-flags";
        url = "https://github.com/google/glog/commit/e433227305663c67d83fc5b2f6e62086c68545ad.patch";
        hash = "sha256-3vPLvbxuZzcTuR23Va2VzVQcM6yEhdp4XmKpbzveUtk=";
        stripLen = 1;
        extraPrefix = "build/_deps/glog-src/";
      })
    ];

    postPatch = ''
      substituteInPlace src/CMakeLists.txt \
        --subst-var-by luaUrl "file://${lua}"
      substituteInPlace helio/cmake/third_party.cmake \
        --subst-var-by jemallocUrl "file://${jemalloc.src}"
    '';

    nativeBuildInputs = [
      autoconf
      autoconf-archive
      automake
      cmake
      ninja
      bison
      re-flex
    ];

    buildInputs = [
      abseil-cpp
      boost
      libunwind
      libtool
      openssl
      libxml2
      zstd
    ];

    cmakeFlags = [
      "-DCMAKE_AR=${gcc-unwrapped}/bin/gcc-ar"
      "-DCMAKE_RANLIB=${gcc-unwrapped}/bin/gcc-ranlib"
      # NO need
      "-DWITH_AWS=OFF"
      # "-DLEGACY_GLOG=OFF"
      # as run in upstream CI
      "-DWITH_ASAN=ON"
      "-DWITH_USAN=ON"
      # re-flex doesn't include a cmake-config/pkgconfig file
      "-DREFLEX_LIBRARY=${re-flex}/lib/libreflex_shared_lib.so"
      "-DREFLEX_INCLUDE=${re-flex}/include"
    ];

    ninjaFlags = ["dragonfly"];

    doCheck = false;
    dontUseNinjaInstall = true;

    installPhase = ''
      runHook preInstall
      mkdir -p $out/bin
      cp ./dragonfly $out/bin
      runHook postInstall
    '';

    meta = with lib; {
      description = "A modern replacement for Redis and Memcached";
      homepage = "https://dragonflydb.io/";
      license = licenses.bsl11;
      platforms = platforms.linux;
      maintainers = with maintainers; [yureien];
    };
  }
