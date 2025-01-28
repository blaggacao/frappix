{
  pname = "frappe";
  version = "v15.54.1";
  meta = {
    url = "https://github.com/frappe/frappe/releases/tag/v15.54.1";
    description = "Sources for frappe (v15.54.1)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "frappe";
    narHash = "sha256-Vn3/1EUht9T/MmVTyYz0UfSCKLyPJ1yJHjjC1Ws/mqk=";
    rev = "4f2ee8b5ad36886fa03adc2ac88297f83f499785";
  };
  passthru = builtins.fromJSON ''{"clone": {"since": "version-14", "upstream": {"fetch": ["+refs/heads/develop:refs/remotes/upstream/develop", "+refs/heads/version-15:refs/remotes/upstream/version-15", "+refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix", "+refs/tags/v15.*:refs/remotes/upstream/tags/v15.*"], "url": "https://github.com/frappe/frappe"}}}'';
}
