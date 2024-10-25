{
  pname = "crm";
  version = "v1.25.1";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.25.1";
    description = "Sources for crm (v1.25.1)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/crm.git";
    submodules = true;
    narHash = "sha256-0ZGtKGaCpdvlD9S9ojZ+GuPQANczWAdXblnsUUTyDoI=";
    rev = "dc106ddf3056060d07ba5651cb76ee204bdfc1f4";
  };
  passthru = builtins.fromJSON ''{}'';
}
