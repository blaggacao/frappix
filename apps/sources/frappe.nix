let
  version = "v15.125.0";
in {
  pname = "frappe";
  inherit version;
  meta = {
    url = "https://github.com/frappe/frappe/releases/tag/${version}";
    description = "Sources for frappe (${version})";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "frappe";
    narHash = "sha256-WgUtWAcxmINQS6mAWISPkb4fOhzEzdinQXempqAe0NM=";
    rev = "e7458ff33c8c1b81f812d521a17df790804eed6d";
  };
  passthru = builtins.fromJSON ''{"clone": {"since": "version-14", "upstream": {"fetch": ["+refs/heads/develop:refs/remotes/upstream/develop", "+refs/heads/version-15:refs/remotes/upstream/version-15", "+refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix", "+refs/tags/v15.*:refs/remotes/upstream/tags/v15.*"], "url": "https://github.com/frappe/frappe"}}}'';
}
