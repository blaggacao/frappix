{
  lib,
  pkgs,
  config,
  options,
  frappixPkgs,
  ...
}:
with lib; let
  cfg = config.services.frappe;
  nginxOpts = options.services.nginx;

  FrappeWebUpstream = "${cfg.project}-web";
  NodeSocketIOUpstream = "${cfg.project}-socketio";
in {
  config.users = mkIf cfg.enable {
    users.${config.services.nginx.user}.extraGroups = [cfg.project];
  };
  config.services = mkIf cfg.enable {
    nginx =
      (
        if nginxOpts ? recommendedBrotliSettings
        then {recommendedBrotliSettings = true;} # > 22.11
        else {recommendedGzipSettings = true;} # 22.11
      )
      // {
        package = pkgs.nginxQuic; # provides http3
        enable = true;
        recommendedTlsSettings = true;
        recommendedOptimisation = true;
        recommendedProxySettings = true;
        proxyTimeout = toString cfg.http_timeout;
        # appendHttpConfig = ''
        #   limit_conn_zone $host zone=per_host_${builtins.hashString "sha256" cfg.project}:${cfg.limit_conn_shared_memory}m;
        # '';

        statusPage = true;

        upstreams = {
          "${FrappeWebUpstream}".servers."unix:${cfg.webSocket} fail_timeout=0" = {};
          "${NodeSocketIOUpstream}".servers."unix:${cfg.socketIOSocket} fail_timeout=0" = {};
        };

        virtualHosts = flip mapAttrs cfg.sites (site-folder: site: let
          # These directives are inherited from the previous configuration
          # level if and only if there are no proxy_set_header directives
          # defined on the current level.
          # see: http://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_set_header
          proxySetHeader = ''
            # repetition, see:
            #   http://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_set_header

            # fixture used by erpnext as site instead of host header
            proxy_set_header X-Frappe-Site-Name ${site-folder};

            # used by erpnext to dispatch (to nginx) the serving of
            # protected files under the /protected internal route
            proxy_set_header X-Use-X-Accel-Redirect True;
          '';
          # These directives are inherited from the previous configuration
          # level if and only if there are no add_header directives
          # defined on the current level.
          # see: http://nginx.org/en/docs/http/ngx_http_headers_module.html#add_header
          addHeader = ''
            # repetition, see:
            #   http://nginx.org/en/docs/http/ngx_http_headers_module.html#add_header
            add_header X-Frame-Options "SAMEORIGIN";
            add_header X-Content-Type-Options nosniff;
            add_header X-XSS-Protection "1; mode=block";
            add_header Strict-Transport-Security "max-age=63072000; includeSubDomains; preload";
            add_header Referrer-Policy "same-origin, strict-origin-when-cross-origin";
          '';
        in {
          kTLS = true;
          http3 = true;
          forceSSL = true;
          serverName = head site.domains;
          serverAliases = tail site.domains;
          extraConfig = ''
            rewrite ^((?!/socket\.io/).+)/$ $1 permanent;
            rewrite ^(.+)/index\.html$ $1 permanent;
            rewrite ^(.+)\.html$ $1 permanent;

            proxy_buffer_size 128k;
            proxy_buffers 4 256k;
            proxy_busy_buffers_size 256k;

            error_page 502 /502.html;

            ${addHeader}
          '';

          locations = {
            "= /.well-known/openid-configuration".extraConfig = ''
              return 301 /api/method/frappe.integrations.oauth2.openid_configuration;
            '';

            # '^~' means: stop here if matched
            "^~ /assets" = {
              root = "${cfg.combinedAssets}/share/sites/";
              tryFiles = "$uri =404";
            };

            # '^~' means: stop here if matched
            "^~ /socket.io/" = {
              proxyWebsockets = true; # we have enable http2 server in socket IO
              proxyPass = "http://${NodeSocketIOUpstream}";
              # TODO: validate purpose, seems shady config
              # proxy_set_header Origin $scheme://$http_host;
              extraConfig = proxySetHeader;
            };

            # '~' means: case sensitive
            "~ ^/protected/(.*)" = {
              root = "${cfg.benchDirectory}/sites";
              tryFiles = "/${site-folder}/$1 =404";
              extraConfig = "internal;";
            };

            # '~*' means: case insensitive
            "~* ^/files/.*.(htm|html|svg|xml)" = {
              root = "${cfg.benchDirectory}/sites";
              tryFiles = "/${site-folder}/public/$uri @webserver";
              extraConfig = ''
                add_header Content-disposition "attachment";

                ${addHeader}
              '';
            };

            "/" = {
              root = "${cfg.benchDirectory}/sites";
              tryFiles = "/${site-folder}/public/$uri @webserver";
            };

            "@webserver" = {
              proxyPass = "http://${FrappeWebUpstream}";
              extraConfig = proxySetHeader;
            };

            # error codes
            "= /502.html" = {
              root = "${cfg.package}/share";
              extraConfig = "internal;";
            };
          };
        });
      };
  };
}
