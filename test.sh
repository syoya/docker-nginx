#/bin/sh

set -e

mkdir -p /secret
echo -e $HTPASSWD > /secret/.htpasswd
echo -e $TLS_PEM > /secret/tls.pem
echo -e $TLS_KEY > /secret/tls.key
echo -e $DHPARAM_PEM > /secret/dhparam.pem

nginx -c /etc/nginx/conf.d/development.conf -t
nginx -c /etc/nginx/conf.d/master.conf -t
nginx -c /etc/nginx/conf.d/production.conf -t
