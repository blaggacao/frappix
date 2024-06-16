{
  pname = "builder";
  version = "v1.9.6";
  meta = {
    url = "https://github.com/frappe/builder/releases/tag/v1.9.6";
    description = "Sources for builder (v1.9.6)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:frappe/builder.git";
    submodules = true;
    narHash = "sha256-EVqbnPkErfxxT10+L+MpkODGAaswHl1hjBVFnAcusDs=";
    rev = "44746bf8ba3456ecfec40fc5f0821913354a419e";
  };
  passthru = builtins.fromJSON ''{}'';
}
