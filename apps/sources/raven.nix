{
  pname = "raven";
  version = "v2.1.8";
  meta = {
    url = "https://github.com/The-Commit-Company/Raven/releases/tag/v2.1.8";
    description = "Sources for raven (v2.1.8)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "The-Commit-Company"; repo = "Raven";
    narHash = "sha256-BeD66p06yatJFyJ8SylxACG0JZjrUWwpx4BvthQRjdo=";
    rev = "e293444275055181c9f0611238937b366acbcc42";
  };
  passthru = builtins.fromJSON ''{"since": "v1.0.0", "upstream": "URL: https://github.com/The-Commit-Company/Raven\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/main:refs/remotes/upstream/main\n"}'';
}