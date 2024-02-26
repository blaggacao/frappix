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
