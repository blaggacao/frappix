{
  pname = "webshop";
  version = "20250131.175352";
  meta = {
    url = "https://github.com/frappe/webshop/commit/bfc2613efd369d4f8b8680d4a03b674693ccbcad";
    description = "Sources for webshop (20250131.175352)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "webshop";
    narHash = "sha256-o9gCqbCNIQnHlB6q9BzhEkY1vRsXd5w3SEc47Ih1qiE=";
    rev = "bfc2613efd369d4f8b8680d4a03b674693ccbcad";
  };
  passthru = builtins.fromJSON ''{}'';
}