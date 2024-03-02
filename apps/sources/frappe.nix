{
  pname = "frappe";
  version = "20240301.130826";
  meta = {
    url = "https://github.com/frappe/frappe/commit/590a9cd0bc9098663388503add5eb41932904061";
    description = "Sources for frappe (20240301.130826)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "frappe";
    narHash = "sha256-m9DgNKsktVaM/4uCcWy4gUissDgGv0XGQmSrEZb8e0U=";
    rev = "590a9cd0bc9098663388503add5eb41932904061";
  };
  passthru = builtins.fromJSON ''{"since": "version-13", "upstream": "URL: https://github.com/frappe/frappe\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}
