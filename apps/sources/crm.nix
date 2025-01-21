{
  pname = "crm";
  version = "v1.33.0";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.33.0";
    description = "Sources for crm (v1.33.0)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/crm.git";
    submodules = true;
    narHash = "sha256-q4u0X2CATuw/hkqQKA6Pir9LifFqXmHEIzY7+rHzJ+w=";
    rev = "7e81a16f098d164ae0eeebfe5f1ef1784348b741";
  };
  passthru = builtins.fromJSON ''{}'';
}
