{
  pname = "erpnext";
  version = "v15.48.4";
  meta = {
    url = "https://github.com/frappe/erpnext/releases/tag/v15.48.4";
    description = "Sources for erpnext (v15.48.4)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "erpnext";
    narHash = "sha256-C/06TS25QAEiYDHG4sHGq+vZQWLp9PY57sSPylCNtl0=";
    rev = "d1fee96f75efedd45024e4d6d581c9c3f687594a";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}
