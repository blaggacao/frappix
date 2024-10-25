{
  pname = "webshop";
  version = "20241007.103637";
  meta = {
    url = "https://github.com/frappe/webshop/commit/5d35bcf50e19b2c4a54ed58a072de9836e5bfac9";
    description = "Sources for webshop (20241007.103637)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "webshop";
    narHash = "sha256-3yUP0miuUTICPTGuTCf6qGanq2gdA4PkLhFjvEUhKYc=";
    rev = "5d35bcf50e19b2c4a54ed58a072de9836e5bfac9";
  };
  passthru = builtins.fromJSON ''{}'';
}
