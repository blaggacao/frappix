let
  inherit (inputs.nixpkgs.lib.modules) setDefaultModuleLocation mkDefault;
in {
  frappix = {
    meta.description = "The main frappix nixos module";
    __functor = _: {pkgs, ...}: {
      # load our custom `pkgs`
      _module.args = {
        inherit (pkgs) frappix;
      };
      _file = ./nixos.nix;
      imports = map (m: setDefaultModuleLocation m m) [
        ./nixos/main.nix
        ./nixos/systemd.nix
        ./nixos/nginx.nix
      ];
    };
  };
}
