{
  pname = "webshop";
  version = "20250322.101439";
  meta = {
    url = "https://github.com/frappe/webshop/commit/0ff095bb7d17136c8fec6f3e05535baef0a90272";
    description = "Sources for webshop (20250322.101439)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "webshop";
    narHash = "sha256-uH9mpApPzonWqBnhkNKrffp3ve5ZKSY/S+fYQQc81o4=";
    rev = "0ff095bb7d17136c8fec6f3e05535baef0a90272";
  };
  passthru = builtins.fromJSON ''{}'';
}