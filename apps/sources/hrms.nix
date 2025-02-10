{
  pname = "hrms";
  version = "v15.39.1";
  meta = {
    url = "https://github.com/frappe/hrms/releases/tag/v15.39.1";
    description = "Sources for hrms (v15.39.1)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/hrms.git"; submodules = true; allRefs = true;
    narHash = "sha256-n8FGaZtUvk+q2LhdeNjYjvYK1JjSKB+g9Vh4EzgVBq4=";
    rev = "d2d2ea453786b7bfc6ac3a93acf04c560178ca67";
  };
  passthru = builtins.fromJSON ''{}'';
}