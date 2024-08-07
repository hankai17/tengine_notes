set args -c /usr/local/tengine/conf/nginx.conf
handle SIGPIPE noprint nopass nostop
set print pretty

#b ngx_http_upstream_check_add_peer
#b ngx_http_upstream_check_add_dynamic_peer
b ngx_http_upstream_check_tls_hello_init
b ngx_http_upstream_check_add_peer
