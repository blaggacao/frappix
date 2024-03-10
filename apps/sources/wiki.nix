{
  pname = "wiki";
  version = "20240121.050421";
  meta = {
    url = "https://github.com/frappe/wiki/commit/3899e787aa094b8774738479e60167fb6ba82a7";
    description = "Sources for wiki (20240121.050421)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "wiki";
    narHash = "sha256-mvMrFDD+zbSFRS/ASYJwj0KOj4FN4luZ1P0AsxY+tgY=";
    rev = "3899e787aa094b8774738479e60167fb6ba82a72";
  };
  passthru = builtins.fromJSON ''{}'';
}
