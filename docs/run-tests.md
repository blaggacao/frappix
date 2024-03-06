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

- Note: `sudo` below is important to be able to bind to low ports

```console
# launch the VM
QEMU_KERNEL_PARAMS=console=ttyS0 QEMU_NET_OPTS="hostfwd=tcp:127.0.0.1:80-:80,hostfwd=tcp:127.0.0.1:433-:443,hostfwd=tcp:127.0.0.1:2222-:22" sudo ./result/bin/run-HOST-vm -nographic; reset
```

**TODO: Run tests:**

Just run ...

```console
bench ...
```
