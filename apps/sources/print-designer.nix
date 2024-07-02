{
  pname = "print-designer";
  version = "v1.3.3";
  meta = {
    url = "https://github.com/frappe/print_designer/releases/tag/v1.3.3";
    description = "Sources for print-designer (v1.3.3)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "print_designer";
    narHash = "sha256-2NyE+ENtzVKvOQDhPrYbS03sJJnZ9HF2MvFXbdIZAW8=";
    rev = "59302de3c0a11558823c21e26b704e0a7e16cc3b";
  };
  passthru = builtins.fromJSON ''{}'';
}
