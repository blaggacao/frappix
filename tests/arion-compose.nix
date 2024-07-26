let
  inherit (inputs.std.lib) dev;
  inherit (inputs.cells.src) oci-images;

  # // {
  #   meta.description = "The frappix vm-based test suite using oci images";
  # };

  environment = {
    FRAPPE_REDIS_CACHE = "redis://redis-cache:6379";
    FRAPPE_REDIS_QUEUE = "redis://redis-queue:6379";
    FRAPPE_DB_HOST = "database";
    FRAPPE_DB_PORT = 80;
    FRAPPE_SOCKETIO_PORT = 9000;
  };
  image = oci-images.frappix-base.image.name;
  volumes = [
    # "sysite:/var/lib/frappix/sites/mysite"
  ];
in {
  frappix = dev.mkArion {
    project.name = "frappix-oci-testbed";
    docker-compose.volumes = {
      sites = {};
      redis-cache-data = {};
      redis-queue-data = {};
      db-data = {};
    };
    services = {
      database.service = {
        image = "mariadb:10.6";
        restart = "unless-stopped";
        # healthcheck = {
        #   test = [
        #     "mysqladmin"
        #     "ping"
        #     "-h"
        #     "localhost"
        #     "--password='changeit'"
        #   ];
        #   interval = "1s";
        #   retries = 15;
        # };
        command = [
          "--character-set-server=utf8mb4"
          "--collation-server=utf8mb4_unicode_ci"
          "--skip-character-set-client-handshake"
          "--skip-innodb-read-only-compressed"
        ];
        volumes = ["db-data:/var/lib/mysql"];
        environment = {
          MYSQL_ROOT_PASSWORD = "changeit";
        };
      };
      redis-cache.service = {
        image = "redis:6.2-alpine";
        volumes = ["redis-cache-data:/data"];
      };
      redis-queue.service = {
        image = "redis:6.2-alpine";
        volumes = ["redis-queue-data:/data"];
      };
      frontend.service = {
        inherit image environment volumes;
        depends_on = ["websocket" "backend"];
        useHostStore = true;
      };
      backend.service = {
        inherit image environment volumes;
        ports = ["8000:8000"];
        useHostStore = true;
      };
      websocket.service = {
        inherit image environment volumes;
        useHostStore = true;
        command = ["--websocket"];
        ports = ["9000:9000"];
      };
      scheduler.service = {
        inherit image environment volumes;
        depends_on = ["database"];
        command = ["--scheduler"];
        useHostStore = true;
      };
      worker-short.service = {
        inherit image environment volumes;
        depends_on = ["database"];
        command = ["--worker=short"];
        useHostStore = true;
      };
      worker-long.service = {
        inherit image environment volumes;
        depends_on = ["database"];
        command = ["--worker=long"];
        useHostStore = true;
      };
    };
  };
}
