{
  pname = "frappe";
  version = "20241025.113255";
  meta = {
    url = "https://github.com/frappe/frappe/commit/eee5b59664c80f4ab669a3b7874df1696d344fe4";
    description = "Sources for frappe (20241025.113255)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "frappe";
    narHash = "sha256-6uNDcIUv55AlcijbfjO7tgaJ1C4IlakVkqJfawYu2/Q=";
    rev = "eee5b59664c80f4ab669a3b7874df1696d344fe4";
  };
  passthru = builtins.fromJSON ''{"since": "version-14", "upstream": "URL: https://github.com/frappe/frappe\nPull: +refs/heads/develop:refs/remotes/upstream/develop\nPull: +refs/heads/version-15:refs/remotes/upstream/version-15\nPull: +refs/heads/version-15-hotfix:refs/remotes/upstream/version-15-hotfix\nPull: +refs/tags/v15.*:refs/remotes/upstream/tags/v15.*\n"}'';
}