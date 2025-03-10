{
  pname = "crm";
  version = "v1.38.6";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.38.6";
    description = "Sources for crm (v1.38.6)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/crm.git"; submodules = true; allRefs = true;
    narHash = "sha256-VavA7FX5Imi1BEPrXcZKNA7l2xLMUobEKkRsFnKWu30=";
    rev = "dc361d7d39bc21f3e84d1751666094667d751fc6";
  };
  passthru = builtins.fromJSON ''{}'';
}