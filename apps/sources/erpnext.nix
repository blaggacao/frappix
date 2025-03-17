{
  pname = "erpnext";
  version = "v15.54.4";
  meta = {
    url = "https://github.com/frappe/erpnext/releases/tag/v15.54.4";
    description = "Sources for erpnext (v15.54.4)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "erpnext";
    narHash = "sha256-whxzYfzwnDlt6yTKzVsQKJp0Eugrdxv4x49HT7+bekU=";
    rev = "08f47b626cfe8fb34bd51b5d32e8fd7892bfdeca";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}