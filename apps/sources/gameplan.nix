{
  pname = "gameplan";
  version = "20240206.065338";
  meta = {
    url = "https://github.com/frappe/gameplan/commit/9f9332cf29496afe5e912e4f1734fbf1142cb18c";
    description = "Sources for gameplan (20240206.065338)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/gameplan.git";
    submodules = true;
    narHash = "sha256-F4GZTCSuPw2s5DIG+9p7oMfBDsS1gGn00eWkD03mvG4=";
    rev = "9f9332cf29496afe5e912e4f1734fbf1142cb18c";
  };
  passthru = builtins.fromJSON ''{}'';
}
