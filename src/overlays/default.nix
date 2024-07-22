{
  python = {
    __functor = _: final: prev: {
      pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [(import ./python)];
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

  libs = {
    __functor = _: (import ./libs inputs);
    meta.description = "Frappix additional libs and native binaries";
  };
}
