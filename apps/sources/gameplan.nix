{
  pname = "gameplan";
  version = "20240723.002701";
  meta = {
    url = "https://github.com/blaggacao/gameplan/commit/34d4b8c17f3c15b0ee0bb883e101ba49d5767fc4";
    description = "Sources for gameplan (20240723.002701)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:blaggacao/gameplan.git";
    submodules = true;
    narHash = "sha256-EQgDhGMI8dqubb03Q2a3xs9y8K9TA5/69PnEe3XLk/A=";
    rev = "34d4b8c17f3c15b0ee0bb883e101ba49d5767fc4";
  };
  passthru = builtins.fromJSON ''{}'';
}
