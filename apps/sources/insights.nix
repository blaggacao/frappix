{
  pname = "insights";
  version = "v3.0.24";
  meta = {
    url = "https://github.com/frappe/insights/releases/tag/v3.0.24";
    description = "Sources for insights (v3.0.24)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/insights.git"; submodules = true; allRefs = true;
    narHash = "sha256-5x+EbxPWlcGtUxqisHQA6LKiUqK9oDGY9DW0DBhoK90=";
    rev = "406ac82e230e6ba84c67774530bd41001f680ed0";
  };
  passthru = builtins.fromJSON ''{}'';
}