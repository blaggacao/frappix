{inputs}: name: {
  __functor = _: self: selectors: self // selectors;
  inherit name;
  type = "nvchecker";
  actions = {
    currentSystem,
    fragment,
    fragmentRelPath,
    target,
    inputs,
  }: let
    pkgs = inputs.nixpkgs.${currentSystem};
  in [
    {
      name = "fetch";
      description = "update source";
      command =
        pkgs.writers.writeBash "fetch"
        # we can't use this package since its not patched
        # bacause it's packaged within this repo we also
        # have no handle onto it for block types
        # pkgs.nvchecker
        ''
          targetname="$(basename ${fragmentRelPath})"
          blockpath="$(dirname ${fragmentRelPath})"
          nvchecker \
            --file "$PRJ_ROOT/$blockpath/config.toml" \
            --entry "$targetname"
        '';
    }
  ];
}
