{
  chainMerge,
  Components,
}:
with Components;
  chainMerge WithBase WithRegion WithNamespace WithCardanoStack {
    meta.description = "Live Environment (user-facing) on the Cardano Proprod Chain (Frankfurt)";
    templates = {
      backend-deployment = {spec.replicas = 1;};
    };
  }
