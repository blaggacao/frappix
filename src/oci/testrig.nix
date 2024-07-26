{pkgs, ...}: {
  oci.frappix = {
    name = "ghcr.io/blaggacao/frappix-test-oci";
    debug = false;
    apps = with pkgs.frappix; [
      erpnext
    ];
  };
}
