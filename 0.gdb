set args -c /usr/local/tengine/conf/nginx.conf
handle SIGPIPE noprint nopass nostop
set print pretty

#b ngx_http_upstream_check_add_peer
#b ngx_http_upstream_check_add_dynamic_peer
#b ngx_http_upstream_check_tls_hello_init
#b ngx_http_upstream_check_add_peer

#b ngx_http_upstream_check_send_handler_https_tls_hk_send
#b ngx_http_upstream_check_http_parse_https_tls_hk_parse
#b box_send
#b box_flush
#b box_on_recv
b flush_wbio 
b ngx_http_upstream_check_module.c:2224
