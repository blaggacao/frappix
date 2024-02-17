let
  inherit (inputs.nixpkgs.lib.modules) setDefaultModuleLocation mkDefault;
in {
  frappe = {
    meta.description = "The main frappix nixos module";
    __functor = _: {...}: {
      # load our custom `pkgs`
      _module.args.frappixPkgs = cell.pkgs;
      _file = ./nixos.nix;
      imports = map (m: setDefaultModuleLocation m m) [
        ./nixos/main.nix
        ./nixos/systemd.nix
        ./nixos/nginx.nix
      ];
    };
  };
}
