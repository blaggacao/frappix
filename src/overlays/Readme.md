# Package Frappe App

Ensure the app has a `pyproject.toml`.
If it has not, submit a PR according to [this change to the app template](https://github.com/frappe/frappe/pull/21704).

0. Inside this folder ..
1. Run `nix run github:nix-community/nix-init -- --url https://github.com/frappe/<myapp>`
2. Follow instructions (choose as path `<myapp>.nix`)
3. Select `buildPythonPackage` as packaging method
4. Add the new package to `default.nix`

If dependencies are missing, you need to package them, too.

#### Example

```console
❯ nix run github:nix-community/nix-init -- --url https://github.com/frappe/erpnext
Enter output path (defaults to current directory)
❯ erpnext.nix
Enter tag or revision (defaults to v14.31.3)
❯ develop
Enter version
❯ develop
Enter pname
❯ erpnext
How should this package be built?
❯ 1 - buildPythonPackage - pyproject
```

## Passthru contracts

In order to account for some of the pecularities of the frappe framework, the following passthru attributes are required:

- `packages`
- `test-dependencies`
- `url`
- `frontend`

They are for example consumed by the nixos, shell or testing modules.
```nix
    passthru = rec {
      # made available to the runtime environment
      packages = [
        mysql
        restic
        wkhtmltopdf-bin
      ];
      # installed into the test environment
      test-dependencies = with pythonPackages; [
        faker
        hypothesis
        responses
      ];
      # clone url to setup local dev environment
      url = "https://github.com/frappe/frappe.git";
      # used to package assets
      frontend = let
        yarnLock = "${src}/yarn.lock";
        # # w/o IFD
        # offlineCache = fetchYarnDeps {
        #   inherit yarnLock;
        #   hash = "";
        # };
        # w/  IFD
        offlineCache = mkYarnOfflineCache {inherit yarnLock;};
      in
        mkYarnApp pname src offlineCache;
    };
```
