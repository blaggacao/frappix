{
  pname = "raven";
  version = "v2.0.5";
  meta = {
    url = "https://github.com/The-Commit-Company/Raven/releases/tag/v2.0.5";
    description = "Sources for raven (v2.0.5)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "The-Commit-Company"; repo = "Raven";
    narHash = "sha256-KBS4b2hi5uhwJSDNL6yM7e2t/hGZvutTiNJtUOytmiE=";
    rev = "e5a04629b1ae1fc77433b66a446203847e674fc0";
  };
  passthru = builtins.fromJSON ''{"since": "v1.0.0", "upstream": "URL: https://github.com/The-Commit-Company/Raven\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/main:refs/remotes/upstream/main\n"}'';
}