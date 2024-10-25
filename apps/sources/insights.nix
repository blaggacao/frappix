{
  pname = "insights";
  version = "v2.2.6";
  meta = {
    url = "https://github.com/frappe/insights/releases/tag/v2.2.6";
    description = "Sources for insights (v2.2.6)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/insights.git";
    submodules = true;
    narHash = "sha256-ihSI55/2h31GqzhM6E4KvfI3kSJwhpHVOBGar+W8iGY=";
    rev = "9e8acedb5cdbb75a5f446911519ba777633eac5c";
  };
  passthru = builtins.fromJSON ''{}'';
}
