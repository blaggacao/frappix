{
  pname = "raven";
  version = "v2.1.6";
  meta = {
    url = "https://github.com/The-Commit-Company/Raven/releases/tag/v2.1.6";
    description = "Sources for raven (v2.1.6)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "The-Commit-Company"; repo = "Raven";
    narHash = "sha256-Vz2VYPmUAnIFrHnG4bsrvn92IYlYunF5cihzqWymVqc=";
    rev = "aac28994b83878e811213a44e985e94ec2d502be";
  };
  passthru = builtins.fromJSON ''{"since": "v1.0.0", "upstream": "URL: https://github.com/The-Commit-Company/Raven\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/main:refs/remotes/upstream/main\n"}'';
}