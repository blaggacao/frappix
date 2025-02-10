{
  pname = "frappe";
  version = "v15.55.2";
  meta = {
    url = "https://github.com/frappe/frappe/releases/tag/v15.55.2";
    description = "Sources for frappe (v15.55.2)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "frappe";
    narHash = "sha256-OSTIyiqF5efGlKYwk34AyHYz+wLZ7j8mMyXGzUGZrdg=";
    rev = "6f3baedb6ed1ae34924c56005f4c7771bfd3bd69";
  };
  passthru = builtins.fromJSON ''{"clone": {"since": "version-14", "upstream": {"fetch": ["+refs/heads/develop:refs/remotes/upstream/develop", "+refs/heads/version-15:refs/remotes/upstream/version-15", "+refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix", "+refs/tags/v15.*:refs/remotes/upstream/tags/v15.*"], "url": "https://github.com/frappe/frappe"}}}'';
}