{
  pname = "frappe";
  version = "20240614.160018";
  meta = {
    url = "https://github.com/frappe/frappe/commit/1a8248a6e6b542456926459f32548c5c6819875d";
    description = "Sources for frappe (20240614.160018)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "frappe";
    narHash = "sha256-U83qkKZBzofCWVcoNJMMjUrwxY15HzXJBh201UdDp5o=";
    rev = "1a8248a6e6b542456926459f32548c5c6819875d";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/frappe\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}
