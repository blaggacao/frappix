{
  pname = "raven";
  version = "v2.0.1";
  meta = {
    url = "https://github.com/The-Commit-Company/Raven/releases/tag/v2.0.1";
    description = "Sources for raven (v2.0.1)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "The-Commit-Company"; repo = "Raven";
    narHash = "sha256-aVifH212vj6sl85ZwLs5BvgvzW56d30cdoRQvdXOoNE=";
    rev = "286776d00991bebe5c65e1d090c84953144ad870";
  };
  passthru = builtins.fromJSON ''{"since": "v1.0.0", "upstream": "URL: https://github.com/The-Commit-Company/Raven\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/main:refs/remotes/upstream/main\n"}'';
}