{
  pname = "gameplan";
  version = "20250303.100259";
  meta = {
    url = "https://github.com/frappe/gameplan/commit/39202bc2e590ffd04d50ef53f72250b5cea27fd3";
    description = "Sources for gameplan (20250303.100259)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/gameplan.git"; submodules = true; allRefs = true;
    narHash = "sha256-1KgmooET4jz09pOn3KEY+hiDsauowW/Ky9YXLFUqN3A=";
    rev = "39202bc2e590ffd04d50ef53f72250b5cea27fd3";
  };
  passthru = builtins.fromJSON ''{}'';
}