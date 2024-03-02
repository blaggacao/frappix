{
  pname = "bench";
  version = "20240224.061718";
  meta = {
    url = "https://github.com/frappe/bench/commit/b12ac648fb5f0fd5e216b4ea380802576e18ec72";
    description = "Sources for bench (20240224.061718)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "bench";
    narHash = "sha256-bU0ETIL9LA6QTK4pRlTji8pVDGEL3lHPtPETlpKMTPs=";
    rev = "b12ac648fb5f0fd5e216b4ea380802576e18ec72";
  };
  passthru = builtins.fromJSON ''{}'';
}
