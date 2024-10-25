{
  pname = "print-designer";
  version = "v1.4.3";
  meta = {
    url = "https://github.com/frappe/print_designer/releases/tag/v1.4.3";
    description = "Sources for print-designer (v1.4.3)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "print_designer";
    narHash = "sha256-CuLTTECeiHppqzSCKcHqw3Vy9gHVIcMarFWSKTc+REU=";
    rev = "ff474bb6aa3b304adda8cc08c4d12a2d3320ecd7";
  };
  passthru = builtins.fromJSON ''{}'';
}
