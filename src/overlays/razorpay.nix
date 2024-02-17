{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  requests,
  responses,
}:
buildPythonPackage rec {
  pname = "razorpay-python";
  version = "1.4.1";
  format = "setuptools";

  src = fetchFromGitHub {
    owner = "razorpay";
    repo = "razorpay-python";
    rev = "v${version}";
    hash = "sha256-PXfyPC4/5MZdnU6hhRS+R3PFybp0TeQbnV5VJt0n+uI=";
  };

  propagatedBuildInputs = [
    requests
  ];

  pythonImportsCheck = ["razorpay"];

  nativeCheckInputs = [
    responses
  ];

  meta = with lib; {
    description = "Razorpay Python SDK";
    homepage = "https://github.com/razorpay/razorpay-python.git";
    changelog = "https://github.com/razorpay/razorpay-python/blob/${src.rev}/CHANGELOG.md";
    license = licenses.mit;
    maintainers = with maintainers; [];
  };
}
