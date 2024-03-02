{
  pname = "insights";
  version = "20240301.064651";
  meta = {
    url = "https://github.com/frappe/insights/commit/20f407aa78e3aed61c15e40182bdca59109164a0";
    description = "Sources for insights (20240301.064651)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "insights";
    narHash = "sha256-V/F30UirETfqjuz7m+rk7lbcc+VqzQzO99kzK59VzBo=";
    rev = "20f407aa78e3aed61c15e40182bdca59109164a0";
  };
  passthru = builtins.fromJSON ''{}'';
}
