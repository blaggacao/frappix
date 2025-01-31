{
  pname = "erpnext";
  version = "v15.50.0";
  meta = {
    url = "https://github.com/frappe/erpnext/releases/tag/v15.50.0";
    description = "Sources for erpnext (v15.50.0)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "erpnext";
    narHash = "sha256-U2jYJKoj8PaBcQBX7td0OE+fReKglAnwI5Ygf6QkAyU=";
    rev = "c5cd0fcd29138ca5736fdde938a36e3528c9fda5";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}