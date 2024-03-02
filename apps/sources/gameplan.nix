{
  pname = "gameplan";
  version = "20240206.065338";
  meta = {
    url = "https://github.com/frappe/gameplan/commit/9f9332cf29496afe5e912e4f1734fbf1142cb18c";
    description = "Sources for gameplan (20240206.065338)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "gameplan";
    narHash = "sha256-LhSoUr+sqtwGSnfu4aux8/NE09EzX+uNibiBgwXKJAA=";
    rev = "9f9332cf29496afe5e912e4f1734fbf1142cb18c";
  };
  passthru = builtins.fromJSON ''{}'';
}
