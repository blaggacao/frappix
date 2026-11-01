let
  version = "v15.124.3";
in {
  pname = "erpnext";
  inherit version;
  meta = {
    url = "https://github.com/frappe/erpnext/releases/tag/${version}";
    description = "Sources for erpnext (${version})";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "erpnext";
    narHash = "sha256-YnDk0ygXSalL4gwhAbkqJXwGZ9IkJvH0MB3gkDMvNqk=";
    rev = "9f33fd5d32ae8a75156b2e7c2f8be02503fcc248";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}
