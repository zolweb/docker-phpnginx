#!/bin/bash

php5-fpm -R
nginx -c /etc/nginx/nginx.conf
