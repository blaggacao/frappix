{
  pname = "crm";
  version = "v1.36.2";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.36.2";
    description = "Sources for crm (v1.36.2)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/crm.git"; submodules = true; allRefs = true;
    narHash = "sha256-HKid4OYiDF1tSUTz9p30PSGAs13ROm1Ykkps3GK1HjA=";
    rev = "bdfc349db5be3373ecb0a88dc915f48a225f89bd";
  };
  passthru = builtins.fromJSON ''{}'';
}