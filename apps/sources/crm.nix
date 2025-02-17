{
  pname = "crm";
  version = "v1.34.15";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.34.15";
    description = "Sources for crm (v1.34.15)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/crm.git"; submodules = true; allRefs = true;
    narHash = "sha256-btSn6ow8f6hU4X8A50WTL5Sy6rSoL1Z5ybrHBeZIdoM=";
    rev = "1e48cb97420a00500e85e2bdf5c280848774dcef";
  };
  passthru = builtins.fromJSON ''{}'';
}