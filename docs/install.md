# Installation

To initialize a Frappix project (a more reproducible "bench"), you may use the guided install script with:

> [!IMPORTANT]
>
> `git` must be configured in your system (email / name).

```console
bash <(curl -L https://blaggacao.github.io/frappix/install) frappe myproject
```

This script does two things:

- ensure system dependencies are in place
- guide you through the project setup

> [!TIP]
>
> `frappe`, the first argument to the script represents the template to use.
> For an overview over the available templates, run:
>
> ```shell
> nix flake show github:blaggacao/frappix
> ```
>
> <sub>You'll already need to have <code>nix</code> installed to run this command.</sub>

## System dependencies

If not already present on your system, this script will ensure the minimal dependencies are installed:

- Nix: _global package manager & language interpreter_
- Direnv: _tool to manage environments per folder_
- Nom: _nix output monitor for for better display_
- Frappix Tool: _runs repository tasks_

You can inspect the bill of material of this install script in [its source](https://github.com/paisano-nix/onboarding/blob/main/install).

## Guided Install

It will guide you through the setup process for a Frappix project.

## Enable Extra Repository Tooling

The extra tooling provides:

- Formatter support
- Commit lint support
- Documentation support
- Editorconfig template

To enable it, change the following value in `tools/shells.nix`:

```diff
{
-   bench.enableExtraProjectTools = false;
+   bench.enableExtraProjectTools = true;
}
```
