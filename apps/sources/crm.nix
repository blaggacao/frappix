{
  pname = "crm";
  version = "v1.34.10";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.34.10";
    description = "Sources for crm (v1.34.10)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/crm.git"; submodules = true; allRefs = true;
    narHash = "sha256-TohDdwHIw6fRxl+XiOrv80HjxxrcRNkt3POqs5qYLDk=";
    rev = "1825f05c243c277244295a2b9c889aeb8e547dea";
  };
  passthru = builtins.fromJSON ''{}'';
}