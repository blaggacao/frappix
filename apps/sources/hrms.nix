{
  pname = "hrms";
  version = "v15.39.0";
  meta = {
    url = "https://github.com/frappe/hrms/releases/tag/v15.39.0";
    description = "Sources for hrms (v15.39.0)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/hrms.git"; submodules = true; allRefs = true;
    narHash = "sha256-xaIUoC6fwsra84Qhay00rDeeyIS5vZtmobqMDotKqK4=";
    rev = "d5a30b93caa7923ba04895afc4aae9f647e021d4";
  };
  passthru = builtins.fromJSON ''{}'';
}