{
  pname = "builder";
  version = "v1.12.3";
  meta = {
    url = "https://github.com/frappe/builder/releases/tag/v1.12.3";
    description = "Sources for builder (v1.12.3)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/builder.git";
    submodules = true;
    narHash = "sha256-OopNYIBEpt4aE4tVXyxTCADaaey3+BoL5WdRd56Gxb0=";
    rev = "9143f3431b969b2c199a4512e39c5c9b928b39c9";
  };
  passthru = builtins.fromJSON ''{}'';
}
