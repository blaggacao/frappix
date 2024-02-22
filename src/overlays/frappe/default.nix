self: final: prev: {
  frappix = {
    frappe = final.python3.pkgs.callPackage ./frappe.nix {
      frappe = self.frappe;
      bench = self.bench;
    };
    erpnext = final.python3.pkgs.callPackage ./erpnext.nix {
      erpnext = self.erpnext;
    };
    gameplan = final.python3.pkgs.callPackage ./gameplan.nix {
      gameplan = self.gameplan;
    };
    insights = final.python3.pkgs.callPackage ./insights.nix {
      insights = self.insights;
    };
    ecommerce-integrations = final.python3.pkgs.callPackage ./ecommerce-integrations.nix {
      ecommerce-integrations = self.ecommerce-integrations;
    };
    payments = final.python3.pkgs.callPackage ./payments.nix {
      payments = self.payments;
    };
  };
}
