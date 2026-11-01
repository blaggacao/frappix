rec {
  pname = "hrms";
  version = "v15.64.7";
  meta = {
    url = "https://github.com/frappe/hrms/releases/tag/v15.64.7";
    description = "Sources for hrms (v15.64.7)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/hrms.git";
    submodules = true;
    allRefs = true;
    narHash = "sha256-VqFfhLLrVKW8fDSaCRnz6xFYRL5a7430rfwPyaxxegc=";
    rev = "9f5d9e4aea4544481dec9c7a25ff3193304540d3";
  };
  passthru = builtins.fromJSON ''{}'';
}
