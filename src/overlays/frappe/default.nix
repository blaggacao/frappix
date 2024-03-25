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

    builder = callPackage ./builder.nix {};
    ecommerce-integrations = callPackage ./ecommerce-integrations.nix {};
    gameplan = callPackage ./gameplan.nix {};
    hrms = callPackage ./hrms.nix {};
    insights = callPackage ./insights.nix {};
    payments = callPackage ./payments.nix {};
    print-designer = callPackage ./print-designer.nix {};
    webshop = callPackage ./webshop.nix {};
    wiki = callPackage ./wiki.nix {};
  });
}
