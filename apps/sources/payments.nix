{
  pname = "payments";
  version = "20240123.122014";
  meta = {
    url = "https://github.com/frappe/payments/commit/54cc513fa9420a7fda48251099b1b158f3f9be6b";
    description = "Sources for payments (20240123.122014)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "payments";
    narHash = "sha256-y+yXbieiDMkYTyL6Fc95EQCnuRtqAD0WMBTU4xF3zxo=";
    rev = "54cc513fa9420a7fda48251099b1b158f3f9be6b";
  };
  passthru = builtins.fromJSON ''{}'';
}
