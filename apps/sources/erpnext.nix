{
  pname = "erpnext";
  version = "v15.54.3";
  meta = {
    url = "https://github.com/frappe/erpnext/releases/tag/v15.54.3";
    description = "Sources for erpnext (v15.54.3)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "erpnext";
    narHash = "sha256-tGEwYwguqbFKAN0JBd20aYEy4HhtxpJdpci2U8AzuyU=";
    rev = "47429095a2bc48dc66e5fe091f804ca0dd78010c";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}