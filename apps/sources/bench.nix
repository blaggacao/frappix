{
  pname = "bench";
  version = "20250128.054330";
  meta = {
    url = "https://github.com/frappe/bench/commit/03f1af154b0c69745ead0214ca967a55436c9bf4";
    description = "Sources for bench (20250128.054330)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "bench";
    narHash = "sha256-rwlyCEfk469Wia/X45Hf2BE29cwEqXtc8LkPCj/4DAA=";
    rev = "03f1af154b0c69745ead0214ca967a55436c9bf4";
  };
  passthru = builtins.fromJSON ''{}'';
}
