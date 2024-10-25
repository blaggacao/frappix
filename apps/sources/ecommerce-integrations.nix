{
  pname = "ecommerce-integrations";
  version = "20241008.043734";
  meta = {
    url = "https://github.com/frappe/ecommerce_integrations/commit/160b119a61555f1c5d62877e796e743a26e7ede8";
    description = "Sources for ecommerce-integrations (20241008.043734)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "ecommerce_integrations";
    narHash = "sha256-nXxt5mku05OLHdy+Sn6WJCN8tl54GBRj+ZI3ZhrGtFI=";
    rev = "160b119a61555f1c5d62877e796e743a26e7ede8";
  };
  passthru = builtins.fromJSON ''{}'';
}
