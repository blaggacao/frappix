{
  pname = "drive";
  version = "v0.0.4";
  meta = {
    url = "https://github.com/frappe/drive/releases/tag/v0.0.4";
    description = "Sources for drive (v0.0.4)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "drive";
    narHash = "sha256-z6Have4ogLq0jx2DLk9oLfVhB8g2MOXapHksnpygk18=";
    rev = "777a9cc76b1c5a54597c68b42f74eeb1abab798a";
  };
  passthru = builtins.fromJSON ''{}'';
}
