let
  pkgs = import inputs.nixpkgs.path {
    # wkhtmltopdf
    config.permittedInsecurePackages = ["openssl-1.1.1w"];

    system = inputs.nixpkgs.system;

    overlays = [
      inputs.frappix.toolsOverlay
      inputs.frappix.pythonOverlay
      (inputs.frappix.frappeOverlay // cell._pins)
    ];
  };
in
  pkgs
