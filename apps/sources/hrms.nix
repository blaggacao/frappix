{
  pname = "hrms";
  version = "v15.33.0";
  meta = {
    url = "https://github.com/frappe/hrms/releases/tag/v15.33.0";
    description = "Sources for hrms (v15.33.0)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/hrms.git";
    submodules = true;
    narHash = "sha256-n6oJyBxFpkY+9/lBr9oPmZVh5DCzfoWQCo4RA2yXkSA=";
    rev = "0155017ad6f974694bbc857e268b73338e22025e";
  };
  passthru = builtins.fromJSON ''{}'';
}
