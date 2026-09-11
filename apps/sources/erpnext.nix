let
version = "v15.121.2";
in
{
  pname = "erpnext";
  inherit version;
  meta = {
    url = "https://github.com/frappe/erpnext/releases/tag/${version}";
    description = "Sources for erpnext (${version})";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "erpnext";
    narHash = "sha256-uaoDRljCKtyaTikd2TrFv/9dlvZLZYcNDPNLAgLXCq8=";
    rev = "df8b7f9648c2ec4da12db8c4022edc8dd1018c6b";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}
