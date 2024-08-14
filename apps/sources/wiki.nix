{
  pname = "wiki";
  version = "20240814.154017";
  meta = {
    url = "https://github.com/frappe/wiki/commit/e1f352102282d8999095a5f554dc73aa96b39284";
    description = "Sources for wiki (20240814.154017)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "wiki";
    narHash = "sha256-tNXxlqKOPiqBL/mc7n0O9y3pwVajj+VrNdyusQ34sUY=";
    rev = "e1f352102282d8999095a5f554dc73aa96b39284";
  };
  passthru = builtins.fromJSON ''{}'';
}
