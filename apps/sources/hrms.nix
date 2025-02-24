{
  pname = "hrms";
  version = "v15.40.0";
  meta = {
    url = "https://github.com/frappe/hrms/releases/tag/v15.40.0";
    description = "Sources for hrms (v15.40.0)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/hrms.git"; submodules = true; allRefs = true;
    narHash = "sha256-6oBstyuNGaYEob30S2yYXDDMpDECYpMJW8pqbmBadBw=";
    rev = "88791bbf5b6b26c7077119021e687554272933fa";
  };
  passthru = builtins.fromJSON ''{}'';
}