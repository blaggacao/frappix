{
  lib,
  writers,
}:
lib.lazyDerivation {
  derivation = let
    # Note: we need python from the bench viratualenv
    #       these scripts implement the hand off where
    #       we abandon the strictness and reproducibility
    #       of Nix and trust the bench venv
    writeVenvPythonBin = name:
      writers.makeScriptWriter {
        # when inside venv, resolves to its python
        interpreter = "/usr/bin/env python";
      } "/bin/${name}";
  in
    writeVenvPythonBin "bench" ''
      import os
      import sys
      import click
      import json
      import warnings
      import frappe
      import frappe.utils.bench_helper

      site_root = os.getenv('FRAPPE_SITES_ROOT')
      skipped_commands = json.loads(os.getenv('FRAPPE_DISABLED_COMMANDS', "[]"))

      if not site_root:
        raise Exception('FRAPPE_SITES_ROOT env variable must be set!')

      os.chdir(site_root)

      if len(sys.argv) > 1 and sys.argv[1] != "frappe":
        sys.argv.insert(1,"frappe")

      if __name__ == "__main__":
        if not frappe._dev_server:
          warnings.simplefilter("ignore")
        commands = {}
        for app in frappe.utils.bench_helper.get_apps():
          commands[app] = frappe.utils.bench_helper.get_app_group(app)
          if not commands[app]:
            continue
          for n, cmd in commands[app].commands.items():
            if n in skipped_commands:
              cmd.hidden = True
        click.Group(commands=commands)(prog_name="bench")
    '';
  meta.description = "Run bench frappe CLI commands";
}
