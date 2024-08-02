{
  pname = "raven";
  version = "v1.6.5";
  meta = {
    url = "https://github.com/The-Commit-Company/Raven/releases/tag/v1.6.5";
    description = "Sources for raven (v1.6.5)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "The-Commit-Company";
    repo = "Raven";
    narHash = "sha256-TmGHx+PnqzB+opz+GBwMM7u2nwGMzQvD21jVPse275g=";
    rev = "1a840771215aaade007c8993e23f4ce149322ae3";
  };
  passthru = builtins.fromJSON ''{"since": "v1.0.0", "upstream": "URL: https://github.com/The-Commit-Company/Raven\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/main:refs/remotes/upstream/main\n"}'';
}
