{
  pname = "erpnext";
  version = "v15.39.3";
  meta = {
    url = "https://github.com/frappe/erpnext/releases/tag/v15.39.3";
    description = "Sources for erpnext (v15.39.3)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "erpnext";
    narHash = "sha256-Cl9I8BKXqzwz6f66XGsv3CfieSzt4PABIhZpTPjrE0A=";
    rev = "f48ce906582cee31272300414b4387da56d47307";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}
