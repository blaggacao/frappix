{
  pname = "webshop";
  version = "20241220.074108";
  meta = {
    url = "https://github.com/frappe/webshop/commit/18144ef826d407104deaa242dce1c046230ceec2";
    description = "Sources for webshop (20241220.074108)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "webshop";
    narHash = "sha256-zOw3sYcBKH0+Agw8QTJhDrro0nsd7ImC1mkQmA56QT4=";
    rev = "18144ef826d407104deaa242dce1c046230ceec2";
  };
  passthru = builtins.fromJSON ''{}'';
}
