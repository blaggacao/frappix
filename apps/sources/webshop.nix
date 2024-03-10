{
  pname = "webshop";
  version = "20240125.060731";
  meta = {
    url = "https://github.com/frappe/webshop/commit/bebfee123fb0a9dd2ce5f7c41d63fc01e1375990";
    description = "Sources for webshop (20240125.060731)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "webshop";
    narHash = "sha256-y/zWxsR6as3nEI3jgCrz1BjWcVcqzxBm11kC596yg0E=";
    rev = "bebfee123fb0a9dd2ce5f7c41d63fc01e1375990";
  };
  passthru = builtins.fromJSON ''{}'';
}
