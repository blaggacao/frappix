let
  lib = inputs.nixpkgs.lib // builtins;

  redisEngine = request:
    inputs.nixpkgs.writeText "redis.conf" (lib.concatStringsSep "\n"
      (lib.mapAttrsToList (name: command: "${name} ${command}")
        request.data));
in {
  process-compose = {
    output = "process-compose.yaml";
    data = {
      "processes" = {
        "MySQL" = {
          "command" = "start-mariadb-for-frappe";
        };
        "RedisCache" = {
          "command" = "envsubst < $PRJ_CONFIG_HOME/redis_cache.conf | redis-server -";
        };
        "RedisQueue" = {
          "command" = "envsubst < $PRJ_CONFIG_HOME/redis_queue.conf | redis-server -";
        };
        "Scheduler" = {
          "command" = "bench frappe schedule";
        };
        "Socketio" = {
          "command" = "node $FRAPPE_BENCH_ROOT";
          "depends_on" = {
            "RedisQueue" = {
              "condition" = "process_started";
            };
          };
        };
        "Watcher" = {
          "command" = "bench frappe watch";
        };
        "Backend" = {
          "command" = "bench frappe serve --port 8000";
          "depends_on" = {
            "RedisQueue" = {
              "condition" = "process_started";
            };
            "RedisCache" = {
              "condition" = "process_started";
            };
            "MySQL" = {
              "condition" = "process_started";
            };
            "Socketio" = {
              "condition" = "process_started";
            };
          };
        };
        "Worker" = {
          "command" = "bench frappe worker";
          "depends_on" = {
            "RedisQueue" = {
              "condition" = "process_started";
            };
            "MySQL" = {
              "condition" = "process_started";
            };
          };
        };
      };
    };
    packages = [
      inputs.nixpkgs.process-compose
      inputs.nixpkgs.envsubst
    ];
  };

  redis_queue = {
    output = "$PRJ_CONFIG_HOME/redis_queue.conf";
    hook.mode = "copy";
    data = {
      dbfilename = "redis_queue.rdb";
      dir = "$PRJ_DATA_HOME";
      pidfile = "$PRJ_RUNTIME_DIR/redis_queue.pid";
      bind = "127.0.0.1";
      port = "11311";
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
      port = "13311";

      maxmemory = "794mb";
      maxmemory-policy = "allkeys-lru";
      appendonly = "no";

      save = "";
    };
    engine = redisEngine;
  };
  editorconfig = {
    data = {
      root = true;
      "*" = {
        end_of_line = "lf";
        insert_final_newline = true;
        trim_trailing_whitespace = true;
        charset = "utf-8";
        indent_style = "space";
        indent_size = 2;
      };
      "*.md" = {
        max_line_length = "off";
        trim_trailing_whitespace = false;
      };
    };
  };
  mdbook = {
    # add preprocessor packages here
    packages = [
      inputs.nixpkgs.mdbook-linkcheck
    ];
    data = {
      # Configuration Reference: https://rust-lang.github.io/mdBook/format/configuration/index.html
      book = {
        language = "en";
        multilingual = false;
        src = "docs";
      };
      build.build-dir = "docs/build";
      preprocessor = {};
      output = {
        html = {};
        # Tool Homepage: https://github.com/Michael-F-Bryan/mdbook-linkcheck
        linkcheck = {};
      };
    };
    output = "book.toml";
    hook.mode = "copy"; # let CI pick it up outside of devshell
  };
  conform = {
    data.commit = {
      conventional = {
        types = [
          "test"
          "perf"
          ""
        ];
        scopes = [];
      };
    };
  };
}
