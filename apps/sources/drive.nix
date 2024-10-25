{
  pname = "drive";
  version = "v0.0.10";
  meta = {
    url = "https://github.com/frappe/drive/releases/tag/v0.0.10";
    description = "Sources for drive (v0.0.10)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "drive";
    narHash = "sha256-QiEOpmS1kdooc9mV3afHA9P+b6l1bIjccUO33VNzaCU=";
    rev = "1f7dd4bb340133c7b1283663c585213e76df391c";
  };
  passthru = builtins.fromJSON ''{}'';
}
