{
  updateOn,
  chainMerge,
  Components,
}:
with Components;
  chainMerge WithBase WithRegion WithNamespace WithCardanoStack {
    meta.description = "Perfomance testing deployment (Oregon)";
    templates = {
      backend-deployment = {
        spec.replicas = 1;
        spec.template.spec.containers = updateOn "name" [
          {
            name = "backend";
            image = "926093910549.dkr.ecr.us-east-1.amazonaws.com/cardano-services-server:wgx40zkqp1x6m5a8k43gpw393h4jdzhq";
          }
        ];
      };
      blockfrost-worker-deployment = {
        spec.template.spec.containers = updateOn "name" [
          {
            name = "blockfrost-worker";
            image = "926093910549.dkr.ecr.us-east-1.amazonaws.com/cardano-services-blockfrost-worker:yaggd1c0j6q0mgw4lcz5m2axvsmnfbjs";
          }
        ];
      };
    };
  }
