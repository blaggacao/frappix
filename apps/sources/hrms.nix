{
  pname = "hrms";
  version = "v15.14.2";
  meta = {
    url = "https://github.com/frappe/hrms/releases/tag/v15.14.2";
    description = "Sources for hrms (v15.14.2)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/hrms.git";
    submodules = true;
    narHash = "sha256-czOWtK27yK0O6RvaN4YrZBG29mFqIcnJu6KNppyrCpQ=";
    rev = "620a2d7cb8da43396c350483bcce54d339126da3";
  };
  passthru = builtins.fromJSON ''{}'';
}
