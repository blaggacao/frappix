{
  pname = "payments";
  version = "20240801.123129";
  meta = {
    url = "https://github.com/frappe/payments/commit/afe18bdbd983004aef153e04fc08d22127eb9654";
    description = "Sources for payments (20240801.123129)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "payments";
    narHash = "sha256-b9HWv+ZBgQ+3Gcro7sJkN5EGpvQPzdqbs/Ws8Kf+iwA=";
    rev = "afe18bdbd983004aef153e04fc08d22127eb9654";
  };
  passthru = builtins.fromJSON ''{}'';
}
