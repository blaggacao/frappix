{
  pname = "erpnext";
  version = "v15.52.0";
  meta = {
    url = "https://github.com/frappe/erpnext/releases/tag/v15.52.0";
    description = "Sources for erpnext (v15.52.0)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "erpnext";
    narHash = "sha256-8UmlSPiRBC2kzS4YgKKMbfx39WrMwPNiXmB6kfHMBVc=";
    rev = "ce90d427e82d6e4a30b08a2f6158a20ad067615b";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}