{
  pname = "insights";
  version = "v3.0.21";
  meta = {
    url = "https://github.com/frappe/insights/releases/tag/v3.0.21";
    description = "Sources for insights (v3.0.21)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/insights.git"; submodules = true; allRefs = true;
    narHash = "sha256-eOe+S2y6f2vvzFm2B8SEr9od6Se7rZQ89M7oF/Q6cxc=";
    rev = "6f4945cbcd307d66f1f0f13750fbe31b277d016f";
  };
  passthru = builtins.fromJSON ''{}'';
}