{
  pname = "bench";
  version = "20241024.095028";
  meta = {
    url = "https://github.com/frappe/bench/commit/af8ed342019b0a4dc7ca982dc7e9d799bfeb9df7";
    description = "Sources for bench (20241024.095028)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "bench";
    narHash = "sha256-BIUcgJI5tlj/s/OigS+rXxDgL3KRh9LPMPOkbYcEm3o=";
    rev = "af8ed342019b0a4dc7ca982dc7e9d799bfeb9df7";
  };
  passthru = builtins.fromJSON ''{}'';
}
