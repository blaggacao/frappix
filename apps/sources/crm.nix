{
  pname = "crm";
  version = "v1.17.0";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.17.0";
    description = "Sources for crm (v1.17.0)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/crm.git";
    submodules = true;
    narHash = "sha256-HHviUSgtV8r/AXtqEku913FkM8zQ9bb4TKHVZwdg3L0=";
    rev = "064106e76cab8917ba7f3b41fba88fa53444ba68";
  };
  passthru = builtins.fromJSON ''{}'';
}
