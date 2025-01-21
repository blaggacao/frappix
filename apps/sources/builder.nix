{
  pname = "builder";
  version = "v1.13.0";
  meta = {
    url = "https://github.com/frappe/builder/releases/tag/v1.13.0";
    description = "Sources for builder (v1.13.0)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/builder.git";
    submodules = true;
    narHash = "sha256-pM23K/9rC9RmFf9VI5vDZsw4E1tAOJaCtnobh7bLOJI=";
    rev = "8c6a098fc4aae572e5af9cff132617137fbc1f01";
  };
  passthru = builtins.fromJSON ''{}'';
}
