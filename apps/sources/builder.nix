{
  pname = "builder";
  version = "v1.13.1";
  meta = {
    url = "https://github.com/frappe/builder/releases/tag/v1.13.1";
    description = "Sources for builder (v1.13.1)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/builder.git";
    submodules = true;
    narHash = "sha256-NrTnEUpkpHglkY6U1jdouh5VaC/OlK//Fkx2LCnlgpk=";
    rev = "8fa40c66de683aacc1abda1e2eaeada6fe4b9af5";
  };
  passthru = builtins.fromJSON ''{}'';
}
