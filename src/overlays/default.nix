{
  python = {
    __functor = _: final: prev: {
      python311 = prev.python311.override {
        packageOverrides = import ./python;
      };
    };
    meta.description = "Frappix python overlays";
  };

  frappe = {
    __functor = import ./frappe;
    inherit (inputs.cells.apps) sources; # providing: frappe, erpnext, ...
    meta.description = "Frappix stock overlays";
  };

  tools = {
    __functor = _: (import ./tools inputs);
    meta.description = "Frappix tools overlays";
  };
}
