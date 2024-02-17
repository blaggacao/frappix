{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  pycryptodome,
}:
buildPythonPackage rec {
  pname = "paytm-python-checksum";
  version = "unstable-2023-08-02";
  format = "setuptools";

  propagatedBuildInputs = [
    pycryptodome
  ];

  src = fetchFromGitHub {
    owner = "paytm";
    repo = "Paytm_Python_Checksum";
    rev = "f1efd1d4e6b2524417437760910729486f4869b8";
    hash = "sha256-h6DBaqKGOKnYwXjCVmQ8EYhOMbhRDXJDJjlQfY3p94s=";
  };

  pythonImportsCheck = ["paytmchecksum"];

  meta = with lib; {
    description = "";
    homepage = "https://github.com/paytm/Paytm_Python_Checksum.git";
    license = licenses.mit;
    maintainers = with maintainers; [];
  };
}
