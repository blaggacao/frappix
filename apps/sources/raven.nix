{
  pname = "raven";
  version = "v1.6.6";
  meta = {
    url = "https://github.com/The-Commit-Company/Raven/releases/tag/v1.6.6";
    description = "Sources for raven (v1.6.6)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "The-Commit-Company";
    repo = "Raven";
    narHash = "sha256-5kxEEn/zm7a4gqQ6C+wNKDzg0hiHWqzk/K9Vjf5RJCM=";
    rev = "83ea15d915b5cc6a1561b1ff98353f975bd3c3bd";
  };
  passthru = builtins.fromJSON ''{"since": "v1.0.0", "upstream": "URL: https://github.com/The-Commit-Company/Raven\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/main:refs/remotes/upstream/main\n"}'';
}
