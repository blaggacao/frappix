let
  inherit (builtins) mapAttrs removeAttrs;
  inherit (inputs.nixpkgs) callPackage;
in (mapAttrs (
    n: s: (s // {meta.description = "Source for ${n} (${s.version})";})
  ) (removeAttrs (callPackage ./_pins/generated.nix {})
    ["override" "overrideDerivation"]))
