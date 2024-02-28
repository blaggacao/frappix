# Use Templates

To use one of the available project templates, run:

```console
PROJECT=<my-project>
TEMPLATE=<my-chosen-template>
nix flake new "$PROJECT" -t "github:blaggacao/frappix#$TEMPLATE"
```

## Simple Frappé

To start your project with a simple Frappé setup, run:

```console
PROJECT=<my-project>
TEMPLATE=frappe
nix flake new "$PROJECT" -t "github:blaggacao/frappix#$TEMPLATE"
```

## Finish Setup

- When you change into the newly created directory, `direnv` will ask you to approve the environment hook.
  - Don't do so, yet!
- First, initialize a git repository in this folder: `git init -b main`
- Then, lock environment dependencies with: `git add . && nix flake lock`
- Next, add and commit your new files with: `git add . && git commit -m "Initial commit"`
- Now, accept the environment file with: `direnv allow`

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
