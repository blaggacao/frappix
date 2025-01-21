{
  pname = "bench";
  version = "20250107.071544";
  meta = {
    url = "https://github.com/frappe/bench/commit/431cc783d19d1ea7bd637edc9a617f6c4e3ac319";
    description = "Sources for bench (20250107.071544)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "bench";
    narHash = "sha256-7s+/mweF+S3J52fIaUgz0rSXqpa2FCdDUe438DMP5dE=";
    rev = "431cc783d19d1ea7bd637edc9a617f6c4e3ac319";
  };
  passthru = builtins.fromJSON ''{}'';
}
