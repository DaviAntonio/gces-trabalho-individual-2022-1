FROM nginx:1.23.1

COPY nginx.conf /etc/nginx/nginx.conf
COPY library-proxy.conf /etc/nginx/conf.d/library-proxy.conf
