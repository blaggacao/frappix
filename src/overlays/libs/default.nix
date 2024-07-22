inputs: final: prev: {
  # soft dependency on webshop
  # hard dependency on gameplan
  redi-search = final.callPackage ./redi-search {};
}
