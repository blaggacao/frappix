{
  pname = "wiki";
  version = "20250321.124101";
  meta = {
    url = "https://github.com/frappe/wiki/commit/2f52aac6a7e5a55e3e1f77557e8bacc6f8b4cb54";
    description = "Sources for wiki (20250321.124101)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "wiki";
    narHash = "sha256-2XyvpF/KGZxl17JhFkb6MsOcgLheEd+uKgG7JBaEF9w=";
    rev = "2f52aac6a7e5a55e3e1f77557e8bacc6f8b4cb54";
  };
  passthru = builtins.fromJSON ''{}'';
}