{
  pname = "hrms";
  version = "v15.38.0";
  meta = {
    url = "https://github.com/frappe/hrms/releases/tag/v15.38.0";
    description = "Sources for hrms (v15.38.0)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/hrms.git";
    submodules = true;
    narHash = "sha256-w4c5rv+o2oYUknG2dmAGE/bt3CaNcj57HbGzv5My73A=";
    rev = "dd8541e9a609bb613c0022fd35665c9e84c34e48";
  };
  passthru = builtins.fromJSON ''{}'';
}
