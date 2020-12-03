#!/bin/bash

chmod 777 /var/lib/php/sessions
chmod -R 777 /var/www/project/var/log
chmod -R 777 /var/www/project/var/cache


service php7.4-fpm start
service nginx start

tail -f /dev/null
