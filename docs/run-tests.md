# Run tests

- Use the test rig module
- Build the VM
- Run it
- Run tests

**Example of using the test rig module:**

```nix
let
  # [...]
  inherit (inputs.frappix.nixosModules) testrig frappix;
in rec {
  test-HOST = {
    config,
    lib,
    ...
  }: {
    imports = [
      HOST
      testrig
    ];
    # maybe some manual adjustments and override necessary for the test
  };
  HOST = {
    # your production config
  };
}
```

**Build the VM with:**

TODO: incorporate into `frx` more elegantly

`nix build .\#nixosConfigurations.deploy-test-HOST.config.system.build.vm`

**Run the VM in headless mode:**

TODO: figure out how to provide network devices

```console
QEMU_KERNEL_PARAMS=console=ttyS0 ./result/bin/run-HOST-vm -nographic; reset
```

**TODO: Run tests:**

Just run ...

```console
bench ...
```
