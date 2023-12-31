let
  pkgs = import inputs.nixpkgs.path {
    # wkhtmltopdf
    config.permittedInsecurePackages = ["openssl-1.1.1v"];

    system = inputs.nixpkgs.system;

    overlays = [
      cell.overlays.python
      cell.overlays.tools
    ];
  };
in
  pkgs
