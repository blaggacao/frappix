{
  pname = "drive";
  version = "v0.0.12";
  meta = {
    url = "https://github.com/frappe/drive/releases/tag/v0.0.12";
    description = "Sources for drive (v0.0.12)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "drive";
    narHash = "sha256-wwBX4qf/GjzBg6OuvHUGtlNnPvPKg4+rNN3b1U9IaWA=";
    rev = "a89c205a4bd45a050093f11844d0263383b60f54";
  };
  passthru = builtins.fromJSON ''{}'';
}
