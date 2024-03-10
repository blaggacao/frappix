{
  pname = "payments";
  version = "20240123.122024";
  meta = {
    url = "https://github.com/frappe/payments/commit/a3a84cdc62f8156d6ec18c15554a0f4d6bcb7d09";
    description = "Sources for payments (20240123.122024)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "payments";
    narHash = "sha256-y+yXbieiDMkYTyL6Fc95EQCnuRtqAD0WMBTU4xF3zxo=";
    rev = "a3a84cdc62f8156d6ec18c15554a0f4d6bcb7d09";
  };
  passthru = builtins.fromJSON ''{}'';
}
