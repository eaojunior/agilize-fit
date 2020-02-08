#!/bin/bash

# Make sure we're not confused by old, incompletely-shutdown httpd
# context after restarting the container.  httpd won't start correctly
# if it thinks it is already running.
rm -rf /run/httpd/*

sleep 15

cd /var/www/application

php websocket/WebSocket.php & >> /dev/null

php artisan migrate --seed

chmod 777 /var/www/application/storage -Rf
chmod 777 /var/www/application/public/images -Rf

exec /usr/sbin/apachectl -D FOREGROUND