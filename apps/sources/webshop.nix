{
  pname = "webshop";
  version = "20240607.063925";
  meta = {
    url = "https://github.com/frappe/webshop/commit/2ba73816791724acb2e8c7cce35c28a56c537b31";
    description = "Sources for webshop (20240607.063925)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "webshop";
    narHash = "sha256-PttgJT7AS2Z6x7k7xKPEFCesetF2si7iAnKBehXTfl8=";
    rev = "2ba73816791724acb2e8c7cce35c28a56c537b31";
  };
  passthru = builtins.fromJSON ''{}'';
}
