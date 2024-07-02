{
  pname = "builder";
  version = "v1.10.0";
  meta = {
    url = "https://github.com/frappe/builder/releases/tag/v1.10.0";
    description = "Sources for builder (v1.10.0)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/builder.git";
    submodules = true;
    narHash = "sha256-y9J7Flpl8HYN8Prz9Xmtu1lSZRMBg3HzaZioTFr7Z3A=";
    rev = "51e117f38c39f4e3816e4f9ddcfa1641f6b2109a";
  };
  passthru = builtins.fromJSON ''{}'';
}
