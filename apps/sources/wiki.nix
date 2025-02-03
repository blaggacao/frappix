{
  pname = "wiki";
  version = "20250203.091217";
  meta = {
    url = "https://github.com/frappe/wiki/commit/2d9f88ee7bbcb31af6c69eb142e0d95c74f54e9d";
    description = "Sources for wiki (20250203.091217)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "wiki";
    narHash = "sha256-wEDreP5+D8KJWthF4YaXUtJunJ38egKW2YmyGRej0C8=";
    rev = "2d9f88ee7bbcb31af6c69eb142e0d95c74f54e9d";
  };
  passthru = builtins.fromJSON ''{}'';
}