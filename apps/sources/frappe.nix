{
  pname = "frappe";
  version = "v15.52.0";
  meta = {
    url = "https://github.com/frappe/frappe/releases/tag/v15.52.0";
    description = "Sources for frappe (v15.52.0)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "frappe";
    narHash = "sha256-NRagXPZMIPLipe2gus79SYvxDRQx9SMmaLnBvxKnXv0=";
    rev = "3eda272bd61b1e73b74d30b1704d885a39c75d0c";
  };
  passthru = builtins.fromJSON ''{"clone": {"since": "version-14", "upstream": {"fetch": ["+refs/heads/develop:refs/remotes/upstream/develop", "+refs/heads/version-15:refs/remotes/upstream/version-15", "+refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix", "+refs/tags/v15.*:refs/remotes/upstream/tags/v15.*"], "url": "https://github.com/frappe/frappe"}}}'';
}
