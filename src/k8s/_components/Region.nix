{...}:
# Nomenclature Currying
{
  namespace, # TODO: `namespace` should be rather `release`
  region,
}: let
  rlbackend = "";
in {
  context = "arn:aws:eks:${region}:926093910549:cluster/lace-prod-${region}";
  kubeconfig = "$PRJ_ROOT/tf/kubeconfig-lace-prod-${region}";
  templates = {
    backend-ingress = {
      metadata.annotations = {
        "alb.ingress.kubernetes.io/wafv2-acl-arn" = "arn:aws:wafv2:${region}:926093910549:regional/webacl/rate-limit-backend/${rlbackend}";
        "external-dns.alpha.kubernetes.io/aws-region" = region;
        "external-dns.alpha.kubernetes.io/set-identifier" = "${region}-${namespace}-backend";
      };
    };
  };
}
