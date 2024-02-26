# Use Templates

To use one of the avialable project templates, run:

```console
PROJECT=<my-project>
TEMPLATE=<my-chosen-template>
nix flake new "$PROJECT" -t "github:blaggacao/frappix#$TEMPLATE"
```

## Simple Frappe

To start your project with a simple Frappe setup, run:

```console
PROJECT=<my-project>
TEMPLATE=frappe
nix flake new "$PROJECT" -t "github:blaggacao/frappix#$TEMPLATE"
```

## Finish Setup

- When you change into the newly created directory, `direnv` will ask you to approve the environment hook.
  - Don't do so, yet!
- First, initialize a git repository in this folder: `git init -b main`
- Then, add and commit your new files with: `git add . && git commit -m "Initial commit"`
- Now, accept the environment file with: `direnv allow`
