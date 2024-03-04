# Custom Upstream (Frappé / ERP Next)

There may be many situations where you need to patch upstream Frappé / ERP Next, either temporary or permanently.

For example, it may take time to upstream a patch, and you need to carry your fixes in the meantime.

You can easily pin your version of sources with the shipped source pinning mechanism.

The sources (`_pins`) will be injected via `apps/pkgs.nix` on this line into the build and deployment pipeline:

```nix
{
  appSources = prevFrappix.appSources.overrideScope' (_: _: _pins);
}
```

## Add custom dependencies

If you also need to add custom dependencies, it will be only slightly more difficult.

1. You need to ensure that the dependencies are packaged in your package set.

- You can check if they are contained upstream in your current Nixpkgs pin
- Or you can package them yourself in an overlay; for this you'd add something like the following snippet to the `inject` function in `apps/pkgs.nix`:

```nix
{
  inject = final: prev {
    pythonPackagesExtensions =
      prev.pythonPackagesExtensions
      ++ [
        (pyFinal: pyPrev: {
          python-qrcode = pyFinal.callPackage ./python-qrcode.nix {};
          whatsfly = pyFinal.callPackage ./whatsfly.nix {};
          matrix-nio = pyFinal.callPackage ./matrix-nio.nix {};
          vrp-cli = pyFinal.callPackage ./vrp-cli {};
        })
      ];
    # [...]
  };
}
```

2. You can add them into the upstream build instructions like so, within the `inject` function:

```nix
{
  frappix = prev.frappix.overrideScope' (finalFrappix: prevFrappix: {
    frappe = prevFrappix.frappe.overridePythonAttrs (o: {
      propagatedBuildInputs = with prevFrappix.frappe.pythonModule.pkgs;
        o.propagatedBuildInputs
        ++ [
          matrix-nio
          authlib
          whatsfly
        ];
    });
    erpnext = prevFrappix.erpnext.overridePythonAttrs (o: {
      propagatedBuildInputs = with prevFrappix.erpnext.pythonModule.pkgs;
        o.propagatedBuildInputs
        ++ [
          vrp-cli
          shapely
          pyproj
          numpy
          scipy
          geojson
        ];
    });

  };
}

```
