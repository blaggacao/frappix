let
  pkgs = import inputs.nixpkgs.path {
    # wkhtmltopdf
    config.permittedInsecurePackages = ["openssl-1.1.1w"];

    system = inputs.nixpkgs.system;

    overlays = [
      cell.overlays.tools
      cell.overlays.python
      cell.overlays.frappe
      cell.overlays.packages
    ];
  };
in
  pkgs
