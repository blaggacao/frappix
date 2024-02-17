# Using Frappix

This `./src` cell implements Frappix, Frappe-on-Nix.

## `./config.nix`

The `config` block contains the Procfile specification to launch a Frappe development server.

## `./shell.nix`

The `shell` block contains a `bench` devshell module to set up a fully functional local development environment.

## `./overlays/` & `./pkgs.nix`

The `overlays` block, together with the `pkgs` block, provides all necessary extra packages and dependencies.
These are python dependencies, binaries or helpers that are not yet available in Nixpkgs.

It also contains packaging for:

- `frappe`
- `erpnext`
- `insight`
- `gameplan`
- `ecommerce-integrations`
- `payments`

See the [overlays readme](./overlays/Readme.md) for tips on how to package Frappe apps for Frappix.

## `./nixos/`

The `nixos` block contains a nixos server implementation to run (multiple) Frappe domains.

See the [nixos readme](./nixos/Readme.md) for more details.

## `./tests.nix`

The `tests` block implements the `frappe` unit test suite as NixOS tests run in a VM.

Please refer to [`./tests.md`](./tests.md) for more details.
