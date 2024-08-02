{
  pname = "raven";
  version = "v1.6.4";
  meta = {
    url = "https://github.com/The-Commit-Company/Raven/releases/tag/v1.6.4";
    description = "Sources for raven (v1.6.4)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "The-Commit-Company";
    repo = "Raven";
    narHash = "sha256-nTSjIHT9PpGMn9jBQh3LL9ItLOLNwHo1X2dIFkGWPPQ=";
    rev = "943509478306a2e3a05026cde87d4f7009fc1f10";
  };
  passthru = builtins.fromJSON ''{}'';
}
