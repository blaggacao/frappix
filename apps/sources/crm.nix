{
  pname = "crm";
  version = "v1.34.6";
  meta = {
    url = "https://github.com/frappe/crm/releases/tag/v1.34.6";
    description = "Sources for crm (v1.34.6)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/crm.git";
    submodules = true;
    narHash = "sha256-gmHzYOLinezUHHMsvZjSw6sosWTw/tylv2r8pECSl+g=";
    rev = "b7d0cf73257bcb400aa56f0ed0d48bca638049b7";
  };
  passthru = builtins.fromJSON ''{}'';
}
