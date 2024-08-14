{
  domain,
  update,
  updateOn,
  append,
}:
# Nomenclature Currying
{
  name,
  namespace,
  network,
  release,
}: {
  name = release;
  inherit namespace;
  templates = {
    backend-service = {
      metadata = {inherit name;};
      metadata.labels = {inherit network release;};
      spec.selector = {inherit network release;};
    };
    backend-deployment = {
      metadata = {inherit name;};
      metadata.labels = {inherit network release;};
      spec.selector.matchLabels = {inherit network release;};
      spec.template.metadata.labels = {inherit network release;};
      spec.template.spec.containers = updateOn "name" [
        {
          name = "backend";
          env = updateOn "name" [
            {
              name = "NETWORK";
              value = network;
            }
          ];
        }
      ];
    };
    blockfrost-worker-deployment = {
      metadata.name = release + "-blockfrost-worker";
      metadata.labels = {inherit network release;};
      spec.selector.matchLabels = {inherit network release;};
      spec.template.metadata.labels = {inherit network release;};
      spec.template.spec.containers = updateOn "name" [
        {
          name = "blockfrost-worker";
          env = updateOn "name" [
            {
              name = "NETWORK";
              value = network;
            }
          ];
        }
      ];
    };
    backend-ingress = {
      metadata = {inherit name;};
      metadata.labels = {inherit network release;};
      spec = {
        rules = update [0] [
          {
            host = "backend." + namespace + "." + domain;
            http.paths = update [1] [
              {backend.service = {inherit name;};}
            ];
          }
        ];
        tls = update [0] [{hosts = update [0] [("backend." + namespace + "." + domain)];}];
      };
    };
  };
}
