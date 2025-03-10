{
  pname = "frappe";
  version = "v15.57.2";
  meta = {
    url = "https://github.com/frappe/frappe/releases/tag/v15.57.2";
    description = "Sources for frappe (v15.57.2)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "frappe";
    narHash = "sha256-KlYrw/5nF57yoekwW+R07Myj4neI8uhp8yfRkUKF16w=";
    rev = "7d580cf4f189858b51f9108bced8de2a724cff8a";
  };
  passthru = builtins.fromJSON ''{"clone": {"since": "version-14", "upstream": {"fetch": ["+refs/heads/develop:refs/remotes/upstream/develop", "+refs/heads/version-15:refs/remotes/upstream/version-15", "+refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix", "+refs/tags/v15.*:refs/remotes/upstream/tags/v15.*"], "url": "https://github.com/frappe/frappe"}}}'';
}