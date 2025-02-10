{
  pname = "crm";
  version = "v1.34.14";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.34.14";
    description = "Sources for crm (v1.34.14)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/crm.git"; submodules = true; allRefs = true;
    narHash = "sha256-2dp++F76VOwc4H+FJG3GpdCVL8cvox52LFeSSTzdUH4=";
    rev = "f1aec6c68ec5bfe0978b95c4a86a638d24207e49";
  };
  passthru = builtins.fromJSON ''{}'';
}