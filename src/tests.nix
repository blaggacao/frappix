let
  inherit (inputs) nixpkgs;
  inherit (cell) pkgs testModules;
  site = "testproject.local";
  project = "TestProject";
  nixos-lib = import (nixpkgs + /nixos/lib) {inherit (nixpkgs) system;};
in {
  tests =
    (nixos-lib.runTest {
      name = "frappe-test";
      _file = ./tests.nix;
      skipLint = true;
      defaults = {
        nixpkgs = {inherit pkgs;};
        imports = [testModules.default];
        virtualisation = {
          # we don't do any nix build inside the test vm
          writableStore = false;
          cores = 2;
          # diskSize = 8000; # MB
          memorySize = 4096; # MB
          forwardPorts = [
            {
              guest.port = 80;
              host.port = 8080;
            }
            {
              guest.port = 443;
              host.port = 4433;
            }
          ];
        };
      };
      hostPkgs = nixpkgs;
      nodes = {
        runnerA = {};
        # runnerB = {};
        # runnerC = {};
        # runnerD = {};
      };
      testScript =
        # python
        ''
          def parallel(*fns):
              from threading import Thread
              threads = [ Thread(target=fn) for fn in fns ]
              for t in threads: t.start()
              for t in threads: t.join()

          start_all()
          total_builds = len(machines)

          runnerA.wait_for_unit("${project}.target")

          with subtest("Wait for site to become reachable"):
              for idx, m in enumerate(machines):
                  print("Check ", m)
                  m.wait_until_succeeds('test $(curl -L -s -o /dev/null -w %{http_code} ${site}) = 200', timeout=10)

          with subtest("Run the unit test suite"):
              for idx, m in enumerate(machines):
                  print("bench run-parallel-tests for ", m)
                  stdout = m.succeed(f"bench run-parallel-tests --build-number {idx+1} --total-builds {total_builds}")
                  print(stdout)
              # parallel([
              #     m.succeed(f"bench run-parallel-tests --build-number {idx+1} --total-builds {total_builds}")
              #     for idx, m in enumerate(machines)
              # ])
        '';
    })
    // {
      meta.description = "The test frappix vm-based test suite";
    };
}
