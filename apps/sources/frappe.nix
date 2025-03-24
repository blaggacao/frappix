{
  pname = "frappe";
  version = "v15.60.0";
  meta = {
    url = "https://github.com/frappe/frappe/releases/tag/v15.60.0";
    description = "Sources for frappe (v15.60.0)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "frappe";
    narHash = "sha256-JoZfT0ZAVV76voyANlLOn15FgjdGMLT1L+30KZmvVQQ=";
    rev = "b38a313be1d63e41160115af3e359af0fd977ed8";
  };
  passthru = builtins.fromJSON ''{"clone": {"since": "version-14", "upstream": {"fetch": ["+refs/heads/develop:refs/remotes/upstream/develop", "+refs/heads/version-15:refs/remotes/upstream/version-15", "+refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix", "+refs/tags/v15.*:refs/remotes/upstream/tags/v15.*"], "url": "https://github.com/frappe/frappe"}}}'';
}