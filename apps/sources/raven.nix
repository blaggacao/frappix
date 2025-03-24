{
  pname = "raven";
  version = "v2.1.10";
  meta = {
    url = "https://github.com/The-Commit-Company/Raven/releases/tag/v2.1.10";
    description = "Sources for raven (v2.1.10)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "The-Commit-Company"; repo = "Raven";
    narHash = "sha256-tb84LXoW0tvThdPOJbPfwWCM1DngyK43FqdXDerJqqw=";
    rev = "ee28fb922ea86ee07435a31444b489dc154264c8";
  };
  passthru = builtins.fromJSON ''{"since": "v1.0.0", "upstream": "URL: https://github.com/The-Commit-Company/Raven\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/main:refs/remotes/upstream/main\n"}'';
}