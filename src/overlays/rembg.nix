{
  lib,
  buildPythonPackage,
  callPackage,
  fetchPypi,
  setuptools,
  wheel,
  numpy,
  onnxruntime,
  opencv4, # opencv-python-headless,
  pillow,
  pooch,
  pymatting ? callPackage ./pymatting.nix {},
  scikit-image,
  scipy,
  tqdm,
  # - cli deps
  # aiohttp,
  # asyncer,
  # click,
  # fastapi,
  # filetype,
  # gradio,
  # python-multipart,
  # uvicorn,
  # watchdog,
  # - dev deps
  # bandit,
  # black,
  # flake8,
  # imagehash,
  # isort,
  # mypy,
  # pytest,
  # twine,
  # - gpu deps
  # onnxruntime-gpu,
}:
buildPythonPackage rec {
  pname = "rembg";
  version = "2.0.49";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-LXfIfZu1pQMjp4OJ12ClyyA20RaQaqpPLHQZ3MeAkjo=";
  };

  nativeBuildInputs = [
    setuptools
    wheel
  ];

  propagatedBuildInputs = [
    numpy
    onnxruntime
    opencv4 # opencv-python-headless
    pillow
    pooch
    pymatting
    scikit-image
    scipy
    tqdm
  ];

  # passthru.optional-dependencies = {
  #   cli = [
  #     aiohttp
  #     asyncer
  #     click
  #     fastapi
  #     filetype
  #     gradio
  #     python-multipart
  #     uvicorn
  #     watchdog
  #   ];
  #   dev = [
  #     bandit
  #     black
  #     flake8
  #     imagehash
  #     isort
  #     mypy
  #     pytest
  #     setuptools
  #     twine
  #     wheel
  #   ];
  #   gpu = [
  #     onnxruntime-gpu
  #   ];
  # };

  pythonImportsCheck = ["rembg"];

  meta = with lib; {
    description = "Remove image background";
    homepage = "https://pypi.org/project/rembg/";
    license = licenses.mit;
    maintainers = with maintainers; [blaggacao];
  };
}
