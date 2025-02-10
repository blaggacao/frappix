{
  pname = "raven";
  version = "v2.0.3";
  meta = {
    url = "https://github.com/The-Commit-Company/Raven/releases/tag/v2.0.3";
    description = "Sources for raven (v2.0.3)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "The-Commit-Company"; repo = "Raven";
    narHash = "sha256-ywFQH5YIc2fXSTDKrxC0woKNWTnncrWCJ3wdYcS+0ik=";
    rev = "904596721d3b904be7a309b5eb1fdb23fddb2fdf";
  };
  passthru = builtins.fromJSON ''{"since": "v1.0.0", "upstream": "URL: https://github.com/The-Commit-Company/Raven\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/main:refs/remotes/upstream/main\n"}'';
}