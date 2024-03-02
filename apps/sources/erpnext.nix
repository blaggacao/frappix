{
  pname = "erpnext";
  version = "20240301.165654";
  meta = {
    url = "https://github.com/frappe/erpnext/commit/a5232d9c103c36c92038622da5c1998c0fbdbe60";
    description = "Sources for erpnext (20240301.165654)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "erpnext";
    narHash = "sha256-9PYZ4ejKTOkN4LyQFqnfSO+fJLvoUX2Xa4k3GKMFcIA=";
    rev = "a5232d9c103c36c92038622da5c1998c0fbdbe60";
  };
  passthru = builtins.fromJSON ''{}'';
}
