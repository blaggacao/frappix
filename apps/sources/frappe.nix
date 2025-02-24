{
  pname = "frappe";
  version = "v15.56.1";
  meta = {
    url = "https://github.com/frappe/frappe/releases/tag/v15.56.1";
    description = "Sources for frappe (v15.56.1)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "frappe";
    narHash = "sha256-Hf6vNdB8CeptkM5tncMbXoB0B7PRRuuh7guUrZhWANE=";
    rev = "8b0de1000b6568d6c2bea8a3566b5441a9831998";
  };
  passthru = builtins.fromJSON ''{"clone": {"since": "version-14", "upstream": {"fetch": ["+refs/heads/develop:refs/remotes/upstream/develop", "+refs/heads/version-15:refs/remotes/upstream/version-15", "+refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix", "+refs/tags/v15.*:refs/remotes/upstream/tags/v15.*"], "url": "https://github.com/frappe/frappe"}}}'';
}