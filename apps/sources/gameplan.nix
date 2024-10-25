{
  pname = "gameplan";
  version = "20240723.013902";
  meta = {
    url = "https://github.com/blaggacao/gameplan/commit/0e8a57023cffbde174b4668c19328bd8c74b4d32";
    description = "Sources for gameplan (20240723.013902)";
  };
  src = builtins.fetchTree {
    type = "git";
    url = "git@github.com:blaggacao/gameplan.git";
    submodules = true;
    narHash = "sha256-HPzqeytml+oOreXAL1nDYDNFE+X9gTkPNey1pVtPcTE=";
    rev = "0e8a57023cffbde174b4668c19328bd8c74b4d32";
  };
  passthru = builtins.fromJSON ''{}'';
}
