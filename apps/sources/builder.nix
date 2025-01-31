{
  pname = "builder";
  version = "v1.14.1";
  meta = {
    url = "https://github.com/frappe/builder/releases/tag/v1.14.1";
    description = "Sources for builder (v1.14.1)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "https://github.com/frappe/builder.git"; submodules = true; allRefs = true;
    narHash = "sha256-gdwNqyYryk7ULorltmts8J5UQ4oRsWkV+sBV8aTj4jc=";
    rev = "560bae3d9a382f871de4861a7ea442eef7a54189";
  };
  passthru = builtins.fromJSON ''{}'';
}