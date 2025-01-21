{
  pname = "payments";
  version = "20241122.100234";
  meta = {
    url = "https://github.com/frappe/payments/commit/fb7c2a93cce16f19d41dfc9bdfd93a779c2e6a9a";
    description = "Sources for payments (20241122.100234)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "payments";
    narHash = "sha256-NDmQNqIgnTSDrNuMi2Vj5YSvQKy5RfuxTNIln64Q1Xk=";
    rev = "fb7c2a93cce16f19d41dfc9bdfd93a779c2e6a9a";
  };
  passthru = builtins.fromJSON ''{}'';
}
