let
  pkgs = import inputs.nixpkgs.path {
    # wkhtmltopdf
    config.permittedInsecurePackages = ["openssl-1.1.1w"];
    config.allowUnfree = true;

    system = inputs.nixpkgs.system;

    overlays = [
      cell.overlays.libs
      cell.overlays.tools
      cell.overlays.python
      cell.overlays.frappe
    ];
  };
in
  pkgs
