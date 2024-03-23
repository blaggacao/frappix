{
  pname = "insights";
  version = "v2.1.4";
  meta = {
    url = "https://github.com/frappe/insights/releases/tag/v2.1.4";
    description = "Sources for insights (v2.1.4)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/insights.git";
    submodules = true;
    narHash = "sha256-0jihmiJ7gr6hm0OrVIkeHEczfixofoZ75nZHDGfki4Q=";
    rev = "c790cc06aa0b9d0c001fd6a867284e7edcb84ea0";
  };
  passthru = builtins.fromJSON ''{}'';
}
