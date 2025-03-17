{
  pname = "crm";
  version = "v1.38.8";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.38.8";
    description = "Sources for crm (v1.38.8)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/crm.git"; submodules = true; allRefs = true;
    narHash = "sha256-aSy//c57HVo/4qN2plOePpq8S8p63u9zA2kAt29XALE=";
    rev = "7ca0987080d3a6b656a6f398623761905472040e";
  };
  passthru = builtins.fromJSON ''{}'';
}