# App Sources

This block holds all Frappé app sources.

You can update them by running the command `nvchecker -c sources/config.toml` within this directory.

To configure how new versions should be discovered, or to add a new source,
you can use set the corresponding values in `nvchecker` according to the official documentation of the tool.

We use a private patch that generates the nix files for us after checking for an update.
See https://github.com/lilydjwg/nvchecker/pull/253 until a better place is found.
