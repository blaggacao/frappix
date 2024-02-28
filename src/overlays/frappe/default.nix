self: final: prev: let
  inherit (final) lib;
  inherit (final) python3;
  newScope = extra: lib.callPackagesWith ({} // extra);
in {
  frappix = lib.makeScope python3.pkgs.newScope (scope: let
    inherit (scope) callPackage;
  in {
    appSources = lib.makeScope newScope (_: self.sources);

    frappe = callPackage ./frappe.nix {};
    erpnext = callPackage ./erpnext.nix {};
    gameplan = callPackage ./gameplan.nix {};
    insights = callPackage ./insights.nix {};
    ecommerce-integrations = callPackage ./ecommerce-integrations.nix {};
    payments = callPackage ./payments.nix {};
  });
}
