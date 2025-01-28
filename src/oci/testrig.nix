inputs: {pkgs, ...}: {
  oci.frappix = {
    name = "ghcr.io/blaggacao/frappix-test-oci";
    debug = false;
    apps = let
      appList = builtins.attrNames (builtins.removeAttrs inputs.cells.apps.sources [
        "bench" # not an app
        "frappe" # automatically added; don't add twice
        "builder" # brakes via https://github.com/frappe/builder/commit/cae39ff422812b52d3c1b25ae4756669add794d1#commitcomment-148362353
        "crm" # brakes via https://github.com/frappe/crm/commit/a439433977321188266ff38cdef09642e4166080#commitcomment-148363342
        "drive" # waiting on https://github.com/blaggacao/frappix/pull/11
        "hrms" # brakes via https://github.com/frappe/hrms/issues/2342
        "gameplan" # brakes via https://github.com/blaggacao/frappix/issues/18#issuecomment-2619829870
      ]);
    in
      map (name: pkgs.frappix.${name}) appList;
  };
}
