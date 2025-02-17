{
  pname = "frappe";
  version = "v15.56.0";
  meta = {
    url = "https://github.com/frappe/frappe/releases/tag/v15.56.0";
    description = "Sources for frappe (v15.56.0)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "frappe";
    narHash = "sha256-X1lKDhGrIfa50kPQ9lyHTRKeAJZRtH5mkcSJd0nm4vE=";
    rev = "6572fdb2e8064273e83febc7c5507aec8d1b9e0a";
  };
  passthru = builtins.fromJSON ''{"clone": {"since": "version-14", "upstream": {"fetch": ["+refs/heads/develop:refs/remotes/upstream/develop", "+refs/heads/version-15:refs/remotes/upstream/version-15", "+refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix", "+refs/tags/v15.*:refs/remotes/upstream/tags/v15.*"], "url": "https://github.com/frappe/frappe"}}}'';
}