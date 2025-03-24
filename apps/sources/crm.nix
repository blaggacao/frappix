{
  pname = "crm";
  version = "v1.39.1";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.39.1";
    description = "Sources for crm (v1.39.1)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/crm.git"; submodules = true; allRefs = true;
    narHash = "sha256-ILiVSDT6SLmxhPFkPIf8qL5cZD1aAB1xuKy2zioOYxg=";
    rev = "bf4da21153d2f1caab45f3e11f95cbea119368e5";
  };
  passthru = builtins.fromJSON ''{}'';
}