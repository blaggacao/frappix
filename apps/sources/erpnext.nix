{
  pname = "erpnext";
  version = "20240726.105447";
  meta = {
    url = "https://github.com/frappe/erpnext/commit/096ec2db6ad8bf326db3b6774592f18491c64337";
    description = "Sources for erpnext (20240726.105447)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "erpnext";
    narHash = "sha256-lTJj9x/Qs7z99UpQ7NCTTTQyM+roFPdc+l34Xjm7bN0=";
    rev = "096ec2db6ad8bf326db3b6774592f18491c64337";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}
