{
  lib,
  pkgs,
  config,
  options,
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

        proxyCachePath = {
          ${cfg.project} = {
            keysZoneName = cfg.project;
            keysZoneSize = "5m"; # ca 40k keys
            inactive = "1d";
            enable = true;
          };
        };
        upstreams = {
          "${FrappeWebUpstream}".servers."unix:${cfg.webSocket} fail_timeout=0" = {};
          "${NodeSocketIOUpstream}".servers."unix:${cfg.socketIOSocket} fail_timeout=0" = {};
        };

        virtualHosts = flip mapAttrs cfg.sites (site-folder: site: let
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
          root = "${cfg.benchDirectory}/sites";
          extraConfig = ''

            proxy_buffer_size 128k;
            proxy_buffers 4 256k;
            proxy_busy_buffers_size 256k;

            proxy_headers_hash_max_size 512;

            error_page 502 /502.html;

            ${addHeader}
          '';

          # The order of evaluation is:
          # 1. Exact matcher ( = )
          # 2. Preferential prefix matcher ( ^~ )
          # 3. Regular expression matcher ( ~* / ~ ) [first match]
          # 4. Prefix matcher [longest match]

          # Inspired by https://github.com/frappe/press/blob/master/nginx.conf
          locations = let
            assets = cacheControl: {
              root = "${cfg.combinedAssets}/share/sites/";
              tryFiles = "$uri =404";
              extraConfig = ''
                ${cacheControl}
                ${addHeader}
              '';
            };

            files = extra: {
              tryFiles = "/${site-folder}/public/$uri @webserver";
              extraConfig = ''
                ${extra}
                ${addHeader}
              '';
            };

            webserver = extra: {
              proxyPass = "http://${FrappeWebUpstream}";
              extraConfig = ''
                proxy_set_header X-Frappe-Site-Name ${site-folder};
                proxy_set_header X-Use-X-Accel-Redirect True;
                proxy_read_timeout 120;
                proxy_redirect off;

                ${extra}
              '';
            };

            cachedWebserver = {
              validity,
              extra,
            }:
              webserver ''
                proxy_cache ${cfg.project};
                proxy_cache_key $scheme$host$request_uri";
                proxy_cache_valid 200 302 ${validity};
                proxy_cache_valid 404 1m;
                proxy_cache_lock on;

                add_header X-Cache-Status $upstream_cache_status;

                proxy_hide_header Set-Cookie;
                proxy_ignore_headers Set-Cookie;
                proxy_set_header Cookie "";

                ${addHeader}

                ${extra}
              '';
          in {
            # Exact matchers
            "= /.well-known/openid-configuration" = {
              return = "301 /api/method/frappe.integrations.oauth2.openid_configuration";
            };
            "= /502.html" = {
              root = "${cfg.package}/share";
              extraConfig = "internal;";
            };
            # specific high-volume api requests
            "= /website_script.js" = cachedWebserver {
              validity = "1d";
              extra = ''
                add_header Cache-Control "public, max-age=${toString (60 * 60 * 3)}";
              '';
            };

            # Preferential prefix matcher
            "^~ /socket.io" = {
              proxyWebsockets = true; # we have enable http2 server in socket IO
              proxyPass = "http://${NodeSocketIOUpstream}";
              extraConfig = ''
                proxy_set_header X-Frappe-Site-Name ${site-folder};
                proxy_set_header Origin $scheme://$http_host;
                proxy_set_header Host $host;
              '';
            };

            # Regular expression matcher
            "~ ^/protected/(.*)" = {
              tryFiles = "/${site-folder}/$1 =404";
              extraConfig = "internal;";
            };
            "~ ^/assets/.+\\.bundle\\.\\w\\w\\w\\w\\w\\w\\w\\w\\..+" = assets ''
              add_header Cache-Control "public, max-age=${toString (365 * 30 * 24 * 60 * 60)}, immutable";
            '';
            "~ ^/assets/.+\\.(ttf|otf|woff|woff2)$" = assets ''
              add_header Cache-Control "public, max-age=${toString (365 * 30 * 24 * 60 * 60)}, immutable";
            '';
            "~* ^/files/.+\\.(htm|html|svg|xml)$" = files ''
              add_header Cache-Control "max-age=${toString (30 * 24 * 60 * 60)}";
              add_header Content-disposition "attachment";
            '';
            "~ ^/files/.+\\.(png|jpe?g|gif|css|js|mp3|wav|ogg|flac|avi|mov|mp4|m4v|mkv|webm)$" = files ''
              add_header Cache-Control "max-age=${toString (30 * 24 * 60 * 60)}";
            '';

            # Prefix matcher
            "/assets" = assets ''
              add_header Cache-Control "public, max-age=${toString (24 * 60 * 60)}";
            '';
            "/" = {
              tryFiles = "/${site-folder}/public/$uri @webserver";
              extraConfig = ''
                rewrite ^(.+)/$ $1 permanent;
                rewrite ^(.+)/index\.html$ $1 permanent;
                rewrite ^(.+)\.html$ $1 permanent;
              '';
            };

            # Alias
            "@webserver" = webserver ''
              internal;
            '';
          };
        });
      };
  };
}
