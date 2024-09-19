{
  pname = "raven";
  version = "v1.7.0";
  meta = {
    url = "https://github.com/The-Commit-Company/Raven/releases/tag/v1.7.0";
    description = "Sources for raven (v1.7.0)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "The-Commit-Company";
    repo = "Raven";
    narHash = "sha256-S8kbFaY2ZsKAF3GK/S/6QbjpA9Piv2LuRbkQ3VVIUKQ=";
    rev = "08e80357eb16353b349e71ab2971b68cc4f67cab";
  };
  passthru = builtins.fromJSON ''{"since": "v1.0.0", "upstream": "URL: https://github.com/The-Commit-Company/Raven\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/main:refs/remotes/upstream/main\n"}'';
}
