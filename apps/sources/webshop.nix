{
  pname = "webshop";
  version = "20250306.140837";
  meta = {
    url = "https://github.com/frappe/webshop/commit/7508d9e6fffbfe12b6efa4715587afb6862d8b4f";
    description = "Sources for webshop (20250306.140837)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "webshop";
    narHash = "sha256-C6G4Pkzr1bSFqeQK9gAAv69oIuSS9XAUIShgR7m/QKk=";
    rev = "7508d9e6fffbfe12b6efa4715587afb6862d8b4f";
  };
  passthru = builtins.fromJSON ''{}'';
}