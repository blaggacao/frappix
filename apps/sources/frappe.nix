let
version = "v15.120.1";
in
{
  pname = "frappe";
  inherit version;
  meta = {
    url = "https://github.com/frappe/frappe/releases/tag/${version}";
    description = "Sources for frappe (${version})";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "frappe";
    narHash = "sha256-dI4BQN2m5G1lPR1Ausmfpkut6SFPP+MONoEBPI5cMFU=";
    rev = "9f8ae9cd25b6735be345da6cc12e9f5a96050c68";
  };
  passthru = builtins.fromJSON ''{"clone": {"since": "version-14", "upstream": {"fetch": ["+refs/heads/develop:refs/remotes/upstream/develop", "+refs/heads/version-15:refs/remotes/upstream/version-15", "+refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix", "+refs/tags/v15.*:refs/remotes/upstream/tags/v15.*"], "url": "https://github.com/frappe/frappe"}}}'';
}
