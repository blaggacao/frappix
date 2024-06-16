{
  pname = "crm";
  version = "v1.14.0";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.14.0";
    description = "Sources for crm (v1.14.0)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/crm.git";
    submodules = true;
    narHash = "sha256-0E754geSD/LUcjUGr3WwcD9CAHaTUn+MFnonwXy5noM=";
    rev = "a1ec478744e38ed7666e784a23613df460a12c56";
  };
  passthru = builtins.fromJSON ''{}'';
}
