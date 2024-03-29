# https://github.com/NixOS/nixpkgs/pull/243891
{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  requests,
  six,
  pytestCheckHook,
  responses,
  nose,
}:
buildPythonPackage rec {
  pname = "gocardless-pro";
  version = "1.45.0";
  format = "setuptools";

  src = fetchFromGitHub {
    owner = "gocardless";
    repo = "gocardless-pro-python";
    rev = "v${version}";
    hash = "sha256-mzIEHm8roiVtrh84Oc+J87anMpr4zMp5yLFCmuljg8k=";
  };

  propagatedBuildInputs = [
    requests
    six
  ];

  pythonImportsCheck = ["gocardless_pro"];

  nativeCheckInputs = [
    pytestCheckHook
    responses
    nose
  ];

  meta = with lib; {
    description = "A client library for the GoCardless Pro API";
    homepage = "https://github.com/gocardless/gocardless-pro-python";
    changelog = "https://github.com/gocardless/gocardless-pro-python/blob/${src.rev}/CHANGELOG.md";
    license = licenses.mit;
    maintainers = with maintainers; [blaggacao];
  };
}
