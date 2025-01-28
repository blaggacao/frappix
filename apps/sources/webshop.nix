{
  pname = "webshop";
  version = "20250122.173714";
  meta = {
    url = "https://github.com/frappe/webshop/commit/22d0d5c930d0656672a2a75608d3a36d96ba375d";
    description = "Sources for webshop (20250122.173714)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "webshop";
    narHash = "sha256-oJOmv5Kc7iesOsqfKv70Pg+VkxF9JSuHPQqs0rfn0Ng=";
    rev = "22d0d5c930d0656672a2a75608d3a36d96ba375d";
  };
  passthru = builtins.fromJSON ''{}'';
}
