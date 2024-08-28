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
#b flush_wbio 

#b ngx_http_upstream_check_module.c:2096

#b box_on_send
#b ngx_http_upstream_check_send_https_handler
#b ngx_http_upstream_check_recv_https_handler

#b buffer_append_string
#b ngx_http_upstream_check_https_parse
b ngx_http_upstream_check_https_reinit


#http进来几次
#b ngx_http_upstream_check_send_handler
#b ngx_http_upstream_check_recv_handler
