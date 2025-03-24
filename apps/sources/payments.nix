{
  pname = "payments";
  version = "20250318.104949";
  meta = {
    url = "https://github.com/frappe/payments/commit/a2ed721365d45f3e70d2233f547382cf2443ab00";
    description = "Sources for payments (20250318.104949)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "payments";
    narHash = "sha256-xSXBvMvlsPD+wr19H7kGyDDVEDjC8x4loqzWHJ6p36U=";
    rev = "a2ed721365d45f3e70d2233f547382cf2443ab00";
  };
  passthru = builtins.fromJSON ''{}'';
}