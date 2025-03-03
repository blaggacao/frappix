{
  pname = "erpnext";
  version = "v15.53.4";
  meta = {
    url = "https://github.com/frappe/erpnext/releases/tag/v15.53.4";
    description = "Sources for erpnext (v15.53.4)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "erpnext";
    narHash = "sha256-donaW85eZt3uaB/L6+vERVPsqbzoS1uly0TT9pn7D1c=";
    rev = "171f9664216f5cd940de8df4c26c60967d3bdc1d";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}