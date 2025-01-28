{
  pname = "wiki";
  version = "20250128.065019";
  meta = {
    url = "https://github.com/frappe/wiki/commit/024fda864bdfab1248384fd4eca1e4710b4e24dc";
    description = "Sources for wiki (20250128.065019)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "wiki";
    narHash = "sha256-c0BZWz3xvA2MxD97OHKERrQp5tyNeSN+2l/l+VyRyTU=";
    rev = "024fda864bdfab1248384fd4eca1e4710b4e24dc";
  };
  passthru = builtins.fromJSON ''{}'';
}
