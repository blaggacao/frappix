{
  pname = "builder";
  version = "v1.15.0";
  meta = {
    url = "https://github.com/frappe/builder/releases/tag/v1.15.0";
    description = "Sources for builder (v1.15.0)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/builder.git"; submodules = true; allRefs = true;
    narHash = "sha256-r8ElYlhRs5SghU5MVJh072FrtVqTL/HACL7twTMmTXk=";
    rev = "5d3653e131cb14c3bdc3023a34ca9f4e639ea243";
  };
  passthru = builtins.fromJSON ''{}'';
}