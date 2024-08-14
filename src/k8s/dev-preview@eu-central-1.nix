{
  updateOn,
  chainMerge,
  Components,
}:
with Components;
  chainMerge WithBase WithRegion WithNamespace WithCardanoStack {
    meta.description = "Development Environment on the Cardano Preview Chain (Frakfurt)";
    templates = {
      backend-deployment = {
        spec.replicas = 1;
        spec.template.spec.containers = updateOn "name" [
          {
            name = "backend";
            image = "926093910549.dkr.ecr.us-east-1.amazonaws.com/cardano-services-server:0x9klz4ggn178asw7v0wc2dxvy3gmw5f";
          }
        ];
      };
      blockfrost-worker-deployment = {
        spec.template.spec.containers = updateOn "name" [
          {
            name = "blockfrost-worker";
            image = "926093910549.dkr.ecr.us-east-1.amazonaws.com/cardano-services-blockfrost-worker:cflzfpp1cp4k8bj1x2kddhpbk7w1h2n0";
          }
        ];
      };
    };
  }
