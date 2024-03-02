{
  pname = "ecommerce-integrations";
  version = "20240205.173955";
  meta = {
    url = "https://github.com/frappe/ecommerce_integrations/commit/9d2a41907d56ef65281e3dc7d61d0d2b64819513";
    description = "Sources for ecommerce-integrations (20240205.173955)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe";
    repo = "ecommerce_integrations";
    narHash = "sha256-DUL1nDwiPSLaUEc1lKA/mtpbudOsnRPkZXlVVN34Uso=";
    rev = "9d2a41907d56ef65281e3dc7d61d0d2b64819513";
  };
  passthru = builtins.fromJSON ''{}'';
}
