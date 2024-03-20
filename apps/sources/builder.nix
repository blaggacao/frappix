{
  pname = "builder";
  version = "v1.7.2";
  meta = {
    url = "https://github.com/frappe/builder/releases/tag/v1.7.2";
    description = "Sources for builder (v1.7.2)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "builder";
    narHash = "sha256-c7s8KMiJeCzjXuXoUdaI4JxA40OeH8EOpnFNNgSkfeA=";
    rev = "896e36a90500e8ca5577cb77ad01ceea8522a1f6";
  };
  passthru = builtins.fromJSON ''{}'';
}
