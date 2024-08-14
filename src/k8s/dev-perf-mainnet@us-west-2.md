This environment is intended for performance tests on `mainnet`.

To deploy a new version of the _Cardano Services_ backend, please make use of the `lace` CLI actions.

1. Upate the Packaging, Entrypoints & OCI-Images layer
2. Open a PR with the chanages and wait for the Images to be published
3. Run the following command (with appropriate cluster privileges):

```console
lace //cardano-services/deployments/dev-perf-mainnet@us-west-2:upgrade
```
