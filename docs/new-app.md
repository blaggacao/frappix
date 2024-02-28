# Run `bench new-app`

This will walk you through the creation of a new app.

_Note: this is an upstream `bench` command and not yet seamlessly integrated with Frappix._

# Add the production pin for your new sources

TODO: describe how to set up nvfetcher sources pinning

Note:

- Explain `since` and `upstream` passthru in nvfetcher.toml

# Add `./apps/<my-app>.nix`

Change the name of the file to the name of your app and paste the following content and go through the comments:

```nix
{
  # access to the pinned frappix sources
  appSources,
  # helper function to extract metadata from frappe apps
  extractFrappeMeta,
  # access to a nixpkgs library
  lib,
  # python builder instrumentation
  buildPythonPackage,
  pythonRelaxDepsHook,
  flit-core,
  python,
}:
buildPythonPackage rec {
  inherit
    (extractFrappeMeta src)
    pname
    version
    format
    ;

  # change to access your app's sources
  inherit (appSources.my-app) src;
  # change for a rudimentary `import my-app`-like assertion
  # of the final package as if run from a python repl
  pythonImportsCheck = ["my-app"];

  nativeBuildInputs = [
    # this tool helps to relax dependencies in case the prepackages libraries
    # are of a different version; prepackages libraries have the huge benefit
    # of being readily available and cached and most of the time work just fine
    pythonRelaxDepsHook
    # the upstream app template uses flit-core these days
    # for older packages, you best update the build system and upstream your patch
    flit-core
  ];

  # additional python or other dependencies
  # for all available packages, see: https://search.nixos.org/packages
  propagatedBuildInputs = with python.pkgs; [
    # rembg
  ];

  # typically, we want to simply relax all dependency versions and use the prepackaged ones;
  # if a version does _really_ not work, you'll need to package the correct python package
  # yourself; for that: get help in the Matrix Chat!
  pythonRelaxDeps = true;
}
```

<div class="warning">
Because Nix is designed to only load files which are principally under version controll,
you'll at least to <code>git add ./apps/\<my-app\>.nix</code> before it will be visible to the builder.
</div>

# Add it to `./apps/pkgs.nix`

Add your new package to `./apps/pkgs.nix`, change and uncomment the part about the custom app.

```nix
  inject = _: prev: {
    # extend the frappix package set
    frappix = prev.frappix.overrideScope (finalFrappix: prevFrappix: {
      # inject your pinned sources (if any) into the frappix build pipeline
      appSources = prevFrappix.appSources.overrideScope (_: _: _pins);
      # add custom apps that are not yet packaged by frappix
      # my-app = finalFrappix.callPackage ./my-app.nix {};
    });
  };
```

`pkgs.frappix` is now populated with your new app.

It is now available for ubiquitous use under that handle in deployment artifacts, development environments, etc.

# Add it to `./tools/shells.nix`

Chose the right name from the previous step and uncomment where it reads:

```nix
      bench.apps = with pkgs.frappix; [
        # my-app
      ];
```

# Finally `devenv reload`

This ensures that `apps.txt` will be updated.

TODO: make this part of automatism.

# Configure `fjsd`

To obtain semantic diff on Frappé JSON, within the git repository of your new app, run:

```console
git config --local --add diff.fsjd.command "fsjd --git"
cat << CONFIG >> .git/info/attributes
*.json diff=fsjd
CONFIG
```
