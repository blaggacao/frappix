{
  pname = "erpnext";
  version = "v15.49.3";
  meta = {
    url = "https://github.com/frappe/erpnext/releases/tag/v15.49.3";
    description = "Sources for erpnext (v15.49.3)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "erpnext";
    narHash = "sha256-rh88YPZGMtTpi2vDXfxgk+YRgbRA8IjB6oOj2fCLrbQ=";
    rev = "de09da31bc56574dba539ffd45aabdd2904be7e6";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/erpnext\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}
