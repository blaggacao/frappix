{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}:
with lib; let
  cfg = config.services.dragonflydb;
  dragonflydb = pkgs.dragonflydb;

  settings =
    {
      dir = "/var/lib/dragonflydb";
      keys_output_limit = cfg.keysOutputLimit;
    }
    // (lib.optionalAttrs (cfg.unixSocket != null) {
      unixsocket = cfg.unixSocket;
      port = 0;
    })
    // (lib.optionalAttrs (cfg.requirePass != null) {requirepass = cfg.requirePass;})
    // (lib.optionalAttrs (cfg.maxMemory != null) {maxmemory = cfg.maxMemory;})
    // (lib.optionalAttrs (cfg.memcachePort != null) {memcache_port = cfg.memcachePort;})
    // (lib.optionalAttrs (cfg.dbNum != null) {dbnum = cfg.dbNum;})
    // (lib.optionalAttrs (cfg.cacheMode != null) {cache_mode = cfg.cacheMode;});
in {
  ###### interface
  disabledModules = [
    (modulesPath + "/services/databases/dragonflydb.nix")
  ];
  options = {
    services.dragonflydb = {
      enable = mkEnableOption "DragonflyDB";

      user = mkOption {
        type = types.str;
        default = "dragonfly";
        description = "The user to run DragonflyDB as";
      };

      unixSocket = mkOption {
        type = with types; nullOr path;
        default = "/run/dragonflydb/dragonfly.sock";
        description = "The TCP port to accept connections.";
      };

      requirePass = mkOption {
        type = with types; nullOr str;
        default = null;
        description = "Password for database";
        example = "letmein!";
      };

      maxMemory = mkOption {
        type = with types; nullOr ints.unsigned;
        default = null;
        description = ''
          The maximum amount of memory to use for storage (in bytes).
          `null` means this will be automatically set.
        '';
      };

      memcachePort = mkOption {
        type = with types; nullOr port;
        default = null;
        description = ''
          To enable memcached compatible API on this port.
          `null` means disabled.
        '';
      };

      keysOutputLimit = mkOption {
        type = types.ints.unsigned;
        default = 8192;
        description = ''
          Maximum number of returned keys in keys command.
          `keys` is a dangerous command.
          We truncate its result to avoid blowup in memory when fetching too many keys.
        '';
      };

      dbNum = mkOption {
        type = with types; nullOr ints.unsigned;
        default = null;
        description = "Maximum number of supported databases for `select`";
      };

      cacheMode = mkOption {
        type = with types; nullOr bool;
        default = null;
        description = ''
          Once this mode is on, Dragonfly will evict items least likely to be stumbled
          upon in the future but only when it is near maxmemory limit.
        '';
      };
    };
  };

  ###### implementation

  config = mkIf config.services.dragonflydb.enable {
    users.users = optionalAttrs (cfg.user == "dragonfly") {
      dragonfly.description = "DragonflyDB server user";
      dragonfly.isSystemUser = true;
      dragonfly.group = "dragonfly";
    };
    users.groups = optionalAttrs (cfg.user == "dragonfly") {dragonfly = {};};

    environment.systemPackages = [dragonflydb];

    systemd.services.dragonflydb = {
      description = "DragonflyDB server";

      wantedBy = ["multi-user.target"];
      after = ["network.target"];

      serviceConfig = {
        ExecStart = "${dragonflydb}/bin/dragonfly --alsologtostderr true ${builtins.concatStringsSep " " (attrsets.mapAttrsToList (n: v: "--${n} ${strings.escapeShellArg v}") settings)}";

        User = cfg.user;

        # Filesystem access
        ReadWritePaths = [settings.dir];
        # Runtime directory and mode
        RuntimeDirectory = lib.removePrefix "/run/" (builtins.dirOf cfg.unixSocket);
        RuntimeDirectoryMode = "0750";
        # State directory and mode
        StateDirectory = "dragonflydb";
        StateDirectoryMode = "0700";
        # Process Properties
        LimitMEMLOCK = "infinity";
        # Caps
        CapabilityBoundingSet = "";
        NoNewPrivileges = true;
        # Sandboxing
        ProtectSystem = "strict";
        ProtectHome = true;
        PrivateTmp = true;
        PrivateDevices = true;
        ProtectKernelTunables = true;
        ProtectKernelModules = true;
        ProtectControlGroups = true;
        LockPersonality = true;
        RestrictAddressFamilies = "AF_UNIX";
        RestrictRealtime = true;
        PrivateMounts = true;
        MemoryDenyWriteExecute = true;
      };
    };
  };
}
