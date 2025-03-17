{
  pname = "webshop";
  version = "20250315.060124";
  meta = {
    url = "https://github.com/frappe/webshop/commit/d87565d939c5eb8c0a14626dc28b782aab3f4c80";
    description = "Sources for webshop (20250315.060124)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "webshop";
    narHash = "sha256-r9d7Zl+oYrDkDtkfl5veMZA/Z5H+2QrFnAEKtcel9vE=";
    rev = "d87565d939c5eb8c0a14626dc28b782aab3f4c80";
  };
  passthru = builtins.fromJSON ''{}'';
}