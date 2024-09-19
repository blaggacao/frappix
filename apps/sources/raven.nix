{
  pname = "raven";
  version = "v1.7.1";
  meta = {
    url = "https://github.com/The-Commit-Company/Raven/releases/tag/v1.7.1";
    description = "Sources for raven (v1.7.1)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "The-Commit-Company";
    repo = "Raven";
    narHash = "sha256-lH/FdrCtO9EF20uW4/KzXNC+HlPf3zMwm5dNIbpKAeI=";
    rev = "02f2c73b9b540bcafdcb415d71cecabfbdc67c0d";
  };
  passthru = builtins.fromJSON ''{"since": "v1.0.0", "upstream": "URL: https://github.com/The-Commit-Company/Raven\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/main:refs/remotes/upstream/main\n"}'';
}
