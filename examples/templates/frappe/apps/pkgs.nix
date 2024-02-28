let
  inherit (inputs) nixpkgs frappix;
  inherit (cell) _pins;

  inject = _: prev: {
    # extend the frappix package set
    frappix = prev.frappix.overrideScope (finalFrappix: prevFrappix: {
      # inject your pinned sources (if any) into the frappix build pipeline
      appSources = prevFrappix.appSources.overrideScope (_: _: _pins);
      # add custom apps that are not yet packaged by frappix
      # my-app = finalFrappix.callPackage ./my-app.nix {};
    });
  };

  pkgs = import nixpkgs.path {
    # wkhtmltopdf
    config.permittedInsecurePackages = ["openssl-1.1.1w"];

    system = nixpkgs.system;

    overlays = [
      frappix.toolsOverlay
      frappix.pythonOverlay
      frappix.frappeOverlay
      inject
    ];
  };
in
  pkgs
