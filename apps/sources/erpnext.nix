{
  pname = "erpnext";
  version = "v15.51.1";
  meta = {
    url = "https://github.com/frappe/erpnext/releases/tag/v15.51.1";
    description = "Sources for erpnext (v15.51.1)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "erpnext";
    narHash = "sha256-xzmqGnXgxSIkyTXPtb7Kl4sh5rGyiQi9901/7758G5s=";
    rev = "8c57e9f8c8c74a5d21893ea01d4e244d0401e8ab";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}