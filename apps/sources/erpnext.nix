{
  pname = "erpnext";
  version = "v15.53.1";
  meta = {
    url = "https://github.com/frappe/erpnext/releases/tag/v15.53.1";
    description = "Sources for erpnext (v15.53.1)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "erpnext";
    narHash = "sha256-JLor7fbmk3no7pktQvKptv60Cf/kVmXVhnBHKkfqGCg=";
    rev = "9e824fc4fea15752ad3d5b788899ca54dc13a89c";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}