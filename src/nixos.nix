{
  frappix = {
    meta.description = "The main frappix nixos module";
    __functor = _: {
      pkgs,
      lib,
      ...
    }: {
      # load our custom `pkgs`
      _module.args = {
        inherit (pkgs) frappix;
      };
      _file = ./nixos.nix;
      imports = map (m: lib.modules.setDefaultModuleLocation m m) [
        ./nixos/main.nix
        ./nixos/systemd.nix
        ./nixos/nginx.nix
      ];
    };
  };
  dragonflyUds = {
    meta.description = "Dragonfly db module implementing unix domain socket";
    __functor = _: {
      pkgs,
      lib,
      ...
    }: {
      _file = ./nixos.nix;
      imports = map (m: lib.modules.setDefaultModuleLocation m m) [
        ./nixos/dragonflydb.nix
      ];
    };
  };
  testrig = {
    meta.description = "The frappix nixos testrig mixin module";
    __functor = _: {
      pkgs,
      lib,
      ...
    }: {
      _file = ./nixos.nix;
      imports = map (m: lib.modules.setDefaultModuleLocation m m) [
        ./nixos/testrig.nix
      ];
    };
  };
}
