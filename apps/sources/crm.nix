{
  pname = "crm";
  version = "v1.34.7";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.34.7";
    description = "Sources for crm (v1.34.7)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/crm.git"; submodules = true; allRefs = true;
    narHash = "sha256-n+qbbZW1zfXJu86I7vN1B26SpZktm4k2+kM+UJRXT7c=";
    rev = "ba75ceb07ccc93b1f214f8721a4071d9d378f9c3";
  };
  passthru = builtins.fromJSON ''{}'';
}