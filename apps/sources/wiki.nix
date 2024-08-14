{
  pname = "wiki";
  version = "20240722.131419";
  meta = {
    url = "https://github.com/frappe/wiki/commit/df7b115378575d33677adefc86daf1ee26729005";
    description = "Sources for wiki (20240722.131419)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "wiki";
    narHash = "sha256-XnCaOl6RoN078+mhxLcl3rgsd4yiBxY86eXDB3ZuZF0=";
    rev = "df7b115378575d33677adefc86daf1ee26729005";
  };
  passthru = builtins.fromJSON ''{}'';
}
