{
  pname = "wiki";
  version = "20250121.061551";
  meta = {
    url = "https://github.com/frappe/wiki/commit/f4356adcd07c063fd5b9e98bccee625fedc64e00";
    description = "Sources for wiki (20250121.061551)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "wiki";
    narHash = "sha256-iJPf3PQ1DgZqEC2/rqZ7Sjx7PgxVqZ7nFmbPdM7w1Ec=";
    rev = "f4356adcd07c063fd5b9e98bccee625fedc64e00";
  };
  passthru = builtins.fromJSON ''{}'';
}
