{
  pname = "hrms";
  version = "v15.38.3";
  meta = {
    url = "https://github.com/frappe/hrms/releases/tag/v15.38.3";
    description = "Sources for hrms (v15.38.3)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/hrms.git";
    submodules = true;
    narHash = "sha256-rr5FRvROqPAIZUDjSVlM98qA4Mt8oleCm2eYoA5o6q4=";
    rev = "fcf42f2e38af364ab98361d4baf5eef7ba50c775";
  };
  passthru = builtins.fromJSON ''{}'';
}
