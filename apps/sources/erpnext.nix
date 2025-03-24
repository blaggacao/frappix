{
  pname = "erpnext";
  version = "v15.54.5";
  meta = {
    url = "https://github.com/frappe/erpnext/releases/tag/v15.54.5";
    description = "Sources for erpnext (v15.54.5)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "erpnext";
    narHash = "sha256-gKO3WDbaS+8iGX+T4N0KNE8hGT34cGRK3LhVPkQ8FBw=";
    rev = "35ac96f1ec09de17916c447e172e8464f3c160be";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}