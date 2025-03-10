{
  pname = "hrms";
  version = "v15.41.0";
  meta = {
    url = "https://github.com/frappe/hrms/releases/tag/v15.41.0";
    description = "Sources for hrms (v15.41.0)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/hrms.git"; submodules = true; allRefs = true;
    narHash = "sha256-t5E+Z6wDFIB3ubc8fnysf3cDDtMIHwhnbcGcDQdpJ4Y=";
    rev = "461897bf67966657b3eb0491113713d38f6c1e07";
  };
  passthru = builtins.fromJSON ''{}'';
}