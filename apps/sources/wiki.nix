{
  pname = "wiki";
  version = "20250307.111438";
  meta = {
    url = "https://github.com/frappe/wiki/commit/0fe81a1c12239c4cafd0fbe64201221300e3abd5";
    description = "Sources for wiki (20250307.111438)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "wiki";
    narHash = "sha256-9na2SdHyJc8l8aqUzMC1WvUc8MHHUoSGeiHMieEWEJY=";
    rev = "0fe81a1c12239c4cafd0fbe64201221300e3abd5";
  };
  passthru = builtins.fromJSON ''{}'';
}