{
  pname = "gameplan";
  version = "20241218.115224";
  meta = {
    url = "https://github.com/frappe/gameplan/commit/605e73d1db4908554f3e4bd60a96787d6c8dc081";
    description = "Sources for gameplan (20241218.115224)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/gameplan.git"; submodules = true;
    narHash = "sha256-boH6LJP4dNBcxzRN9ArVLaTOfkv9RLNkDn3iN3f5uyQ=";
    rev = "605e73d1db4908554f3e4bd60a96787d6c8dc081";
  };
  passthru = builtins.fromJSON ''{}'';
}