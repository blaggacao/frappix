{
  pname = "wiki";
  version = "20250221.105302";
  meta = {
    url = "https://github.com/frappe/wiki/commit/26caeb22cd3ab26431f91b548b9cf0d9455addcf";
    description = "Sources for wiki (20250221.105302)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "wiki";
    narHash = "sha256-w5kTCpH4uk0FblHFtkxr7RTFvZhQCEnkBnbTqT7JfvI=";
    rev = "26caeb22cd3ab26431f91b548b9cf0d9455addcf";
  };
  passthru = builtins.fromJSON ''{}'';
}