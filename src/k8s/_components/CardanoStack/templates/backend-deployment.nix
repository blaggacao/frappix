{updateOn}:
# Nomenclature Currying
{namespace}: {
  spec = {
    template = {
      spec.containers = updateOn "name" [
        {
          name = "backend";
          env = updateOn "name" [
            {
              name = "OGMIOS_SRV_SERVICE_NAME";
              value = namespace + "-cardano-stack." + namespace + ".svc.cluster.local";
            }
            {
              name = "POSTGRES_HOST";
              value = namespace + "-dbsync-db";
            }
            {
              name = "POSTGRES_PASSWORD";
              valueFrom.secretKeyRef.name = "cardano-owner-user." + namespace + "-dbsync-db.credentials.postgresql.acid.zalan.do";
            }
            {
              name = "POSTGRES_USER";
              valueFrom.secretKeyRef.name = "cardano-owner-user." + namespace + "-dbsync-db.credentials.postgresql.acid.zalan.do";
            }
          ];
        }
      ];
    };
  };
}
