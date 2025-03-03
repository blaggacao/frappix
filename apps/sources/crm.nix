{
  pname = "crm";
  version = "v1.38.3";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.38.3";
    description = "Sources for crm (v1.38.3)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/crm.git"; submodules = true; allRefs = true;
    narHash = "sha256-I1SRie6CyqSBMSDvq+h+C7r4BWCYhhXAPgwKWnSq9gA=";
    rev = "eef068a2d8271fcd6e2e7039ba66e54f304e5713";
  };
  passthru = builtins.fromJSON ''{}'';
}