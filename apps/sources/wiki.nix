{
  pname = "wiki";
  version = "20241021.075720";
  meta = {
    url = "https://github.com/frappe/wiki/commit/a7f9342d9438e746b9ff42ba7ab28ac5899eaa00";
    description = "Sources for wiki (20241021.075720)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "wiki";
    narHash = "sha256-4MNvZrhoUuOzFLnE0a4hjNrSREdFZHwpknr3UR9v344=";
    rev = "a7f9342d9438e746b9ff42ba7ab28ac5899eaa00";
  };
  passthru = builtins.fromJSON ''{}'';
}
