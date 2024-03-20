{
  pname = "print-designer";
  version = "20240317.225753";
  meta = {
    url = "https://github.com/frappe/print_designer/commit/f87b1aa2de3b5c720f24cc91fddc614a89d219a0";
    description = "Sources for print-designer (20240317.225753)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "print_designer";
    narHash = "sha256-/oAMeSt/VVXDiF0ov52Qm9IcpsX22XA//kywxDTJ0Ww=";
    rev = "f87b1aa2de3b5c720f24cc91fddc614a89d219a0";
  };
  passthru = builtins.fromJSON ''{}'';
}
