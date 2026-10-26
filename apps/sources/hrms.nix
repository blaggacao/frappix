rec {
  pname = "hrms";
  version = "v15.64.6";
  meta = {
    url = "https://github.com/frappe/hrms/releases/tag/v15.64.6";
    description = "Sources for hrms (v15.64.6)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/hrms.git";
    submodules = true;
    allRefs = true;
    narHash = "sha256-WC9IMspCo9GG+ZqLdir6mad7wCIYEfKOJsegaF1JvZw=";
    rev = "3fae97ab47c1c4188c1ace03895226fe2409ccf3";
  };
  passthru = builtins.fromJSON ''{}'';
}
