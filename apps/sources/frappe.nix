{
  pname = "frappe";
  version = "v15.58.1";
  meta = {
    url = "https://github.com/frappe/frappe/releases/tag/v15.58.1";
    description = "Sources for frappe (v15.58.1)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "frappe";
    narHash = "sha256-NL4F2kQC5DR/X/gFfF1ze6VGRwTRCJOk4Ar1qOFm3s0=";
    rev = "d34d8e48641dfb46b204293a8abf53c678394efa";
  };
  passthru = builtins.fromJSON ''{"clone": {"since": "version-14", "upstream": {"fetch": ["+refs/heads/develop:refs/remotes/upstream/develop", "+refs/heads/version-15:refs/remotes/upstream/version-15", "+refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix", "+refs/tags/v15.*:refs/remotes/upstream/tags/v15.*"], "url": "https://github.com/frappe/frappe"}}}'';
}