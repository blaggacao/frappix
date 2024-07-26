{
  pname = "frappe";
  version = "20240725.135904";
  meta = {
    url = "https://github.com/frappe/frappe/commit/9978d61a32a30440ed4e92d0956fcb4e041983cb";
    description = "Sources for frappe (20240725.135904)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "frappe";
    narHash = "sha256-0i7kT29IVkqAWJqvGj0wa0oWOy+soTpjDg/1TTY84uk=";
    rev = "9978d61a32a30440ed4e92d0956fcb4e041983cb";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/frappe\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}
