{
  pname = "raven";
  version = "v2.1.2";
  meta = {
    url = "https://github.com/The-Commit-Company/Raven/releases/tag/v2.1.2";
    description = "Sources for raven (v2.1.2)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "The-Commit-Company"; repo = "Raven";
    narHash = "sha256-EkmrNRqUavcyluT/JE9NOHliJMsuRmRYk6+v26ptYpc=";
    rev = "853dd3dbb867e400daedab69f143822886870b8a";
  };
  passthru = builtins.fromJSON ''{"since": "v1.0.0", "upstream": "URL: https://github.com/The-Commit-Company/Raven\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/main:refs/remotes/upstream/main\n"}'';
}