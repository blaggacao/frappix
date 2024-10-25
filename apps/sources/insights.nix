{
  pname = "insights";
  version = "v3.0.1-beta";
  meta = {
    url = "https://github.com/frappe/insights/releases/tag/v3.0.1-beta";
    description = "Sources for insights (v3.0.1-beta)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/insights.git";
    submodules = true;
    narHash = "sha256-ShwElM2YfMobm4hup/ztgzM+reCpdEMwhxuTJKAOLZ8=";
    rev = "bf0dd5648f0c20d0760917e9eba1d8662f79392d";
  };
  passthru = builtins.fromJSON ''{}'';
}
