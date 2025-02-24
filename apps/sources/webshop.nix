{
  pname = "webshop";
  version = "20250219.075949";
  meta = {
    url = "https://github.com/frappe/webshop/commit/6fc2573eb8a0487b746490f404b98c2bc8e1147b";
    description = "Sources for webshop (20250219.075949)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "webshop";
    narHash = "sha256-a8IfqQb0KBvPltNRZuShu1ZfkPBekG4ReIxPGIQIodI=";
    rev = "6fc2573eb8a0487b746490f404b98c2bc8e1147b";
  };
  passthru = builtins.fromJSON ''{}'';
}