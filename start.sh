#!/bin/bash

/etc/init.d/php5-fpm start
nginx -c /etc/nginx/nginx.conf
