{
  pname = "webshop";
  version = "20241025.155637";
  meta = {
    url = "https://github.com/frappe/webshop/commit/a1151d0ea6469add0b30b4f540e1adb5ee8b830d";
    description = "Sources for webshop (20241025.155637)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "webshop";
    narHash = "sha256-bvufqqUvJpTSwfNk2Mad3UmHLpwvv+nM0Vju6NTBWyo=";
    rev = "a1151d0ea6469add0b30b4f540e1adb5ee8b830d";
  };
  passthru = builtins.fromJSON ''{}'';
}
