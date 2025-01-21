{
  pname = "raven";
  version = "v2.0.0";
  meta = {
    url = "https://github.com/The-Commit-Company/Raven/releases/tag/v2.0.0";
    description = "Sources for raven (v2.0.0)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "The-Commit-Company";
    repo = "Raven";
    narHash = "sha256-E71iACxWpqNyi9d87h7BDjrz5AOvdwmC9B3WIC8t87w=";
    rev = "5c3a2567167ca1c411c4245b80c3bb9b8fa30c30";
  };
  passthru = builtins.fromJSON ''{"since": "v1.0.0", "upstream": "URL: https://github.com/The-Commit-Company/Raven\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/main:refs/remotes/upstream/main\n"}'';
}
