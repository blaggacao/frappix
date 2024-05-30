{
  pname = "gameplan";
  version = "20240513.150011";
  meta = {
    url = "https://github.com/frappe/gameplan/commit/89315d218ba91b8ccbc477930128e57595c8c07a";
    description = "Sources for gameplan (20240513.150011)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/gameplan.git";
    submodules = true;
    narHash = "sha256-rdU1wBvrp6w03jbyJExePSYjtrDCdC6oaCj8Q+BNhas=";
    rev = "89315d218ba91b8ccbc477930128e57595c8c07a";
  };
  passthru = builtins.fromJSON ''{}'';
}
