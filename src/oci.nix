{
  frappix = {
    meta.description = "The main frappix OCI module";
    __functor = _: {
      pkgs,
      lib,
      ...
    }: {
      # load our custom `pkgs`
      _module.args = {
        inherit (pkgs) frappix;
        inherit (inputs.std.lib) ops;
      };
      _file = ./oci.nix;
      imports = map (m: lib.modules.setDefaultModuleLocation m m) [
        ./oci/main.nix
      ];
    };
  };
  testrig = {
    meta.description = "The frappix example OCI image profile";
    __functor = _: {
      pkgs,
      lib,
      ...
    }: {
      _file = ./oci.nix;
      imports = map (m: lib.modules.setDefaultModuleLocation m m) [
        ./oci/testrig.nix
      ];
    };
  };
}
