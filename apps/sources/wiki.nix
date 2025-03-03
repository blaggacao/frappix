{
  pname = "wiki";
  version = "20250303.090537";
  meta = {
    url = "https://github.com/frappe/wiki/commit/ff553926d89cfaaa8b43dc6b7847d4c67f92f42d";
    description = "Sources for wiki (20250303.090537)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "wiki";
    narHash = "sha256-q8C0Jj/GYBp+FOWBIJVay+zUwii5N9aUjEP0Muebebw=";
    rev = "ff553926d89cfaaa8b43dc6b7847d4c67f92f42d";
  };
  passthru = builtins.fromJSON ''{}'';
}