{
  pname = "drive";
  version = "v0.1.0-alpha";
  meta = {
    url = "https://github.com/frappe/drive/releases/tag/v0.1.0-alpha";
    description = "Sources for drive (v0.1.0-alpha)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "drive";
    narHash = "sha256-XP0a09lzO74dHe5ya+XrGD3oHp2YvDnAl2fIgRpv+B4=";
    rev = "6188a854652adb9702f78efbc35645d0aecd1a2e";
  };
  passthru = builtins.fromJSON ''{}'';
}