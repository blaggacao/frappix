{
  pname = "bench";
  version = "20250320.162429";
  meta = {
    url = "https://github.com/frappe/bench/commit/360acd3dc225e8a70a68b4b14553f8a35b1b9dc8";
    description = "Sources for bench (20250320.162429)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "bench";
    narHash = "sha256-NgV0aXELHsSTdwDgfinMO8KM1qarCxD9W4C6uMvgBY4=";
    rev = "360acd3dc225e8a70a68b4b14553f8a35b1b9dc8";
  };
  passthru = builtins.fromJSON ''{}'';
}