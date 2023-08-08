let
  lib = inputs.nixpkgs.lib // builtins;

  procfileEngine = request:
    inputs.nixpkgs.writeText "procfile" (lib.concatStringsSep "\n"
      (lib.mapAttrsToList (name: command: "${name}: ${command}")
        request.data));

  redisEngine = request:
    inputs.nixpkgs.writeText "redis.conf" (lib.concatStringsSep "\n"
      (lib.mapAttrsToList (name: command: "${name} ${command}")
        request.data));
in {
  procfile = {
    output = "Procfile";
    hook.mode = "copy";
    data = {
      mysql = "start-mariadb-for-frappe";

      redis_cache = "envsubst < $PRJ_CONFIG_HOME/redis_cache.conf | redis-server -";
      redis_queue = "envsubst < $PRJ_CONFIG_HOME/redis_queue.conf | redis-server -";

      socketio = "node $FRAPPE_BENCH_ROOT/apps/frappe/socketio.js";

      watch = "bench frappe watch";
      web = "bench frappe serve --port 8000";
      schedule = "bench frappe schedule";
      worker = "bench frappe worker";
    };
    engine = procfileEngine;
    packages = [inputs.nixpkgs.envsubst];
  };

  redis_queue = {
    output = "$PRJ_CONFIG_HOME/redis_queue.conf";
    hook.mode = "copy";
    data = {
      dbfilename = "redis_queue.rdb";
      dir = "$PRJ_DATA_HOME";
      pidfile = "$PRJ_RUNTIME_DIR/redis_queue.pid";
      bind = "127.0.0.1";
      port = "11000";
    };
    engine = redisEngine;
  };

  redis_cache = {
    output = "$PRJ_CONFIG_HOME/redis_cache.conf";
    hook.mode = "copy";
    data = {
      dbfilename = "redis_cache.rdb";
      dir = "$PRJ_DATA_HOME";
      pidfile = "$PRJ_RUNTIME_DIR/redis_cache.pid";
      bind = "127.0.0.1";
      port = "13000";

      maxmemory = "794mb";
      maxmemory-policy = "allkeys-lru";
      appendonly = "no";

      save = "";
    };
    engine = redisEngine;
  };
}
