{
  pname = "insights";
  version = "v3.12.6";
  meta = {
    url = "https://github.com/frappe/insights/releases/tag/v3.12.6";
    description = "Sources for insights (v3.12.6)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/insights.git"; submodules = true; allRefs = true;
    narHash = "sha256-BmScDDfBG9eB9+7x9ev6fONlYU7z1rjkwMAccKsTUos=";
    rev = "e2d4adcd192096c2ec89822c2decc452312a2a5d";
  };
  passthru = builtins.fromJSON ''{}'';
}
