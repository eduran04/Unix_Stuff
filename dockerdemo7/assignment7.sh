#!/usr/bin/env bash
# Copyright Elizandro Duran 12/06/2024

# i. Start nginx service

service nginx start

# ii. Using sed to replace "Welcome to nginx" with "Welcome to Elizandro's page"
# in /var/www/html/*.html inside the docker instance.

sed -i "s/Welcome to nginx/Welcome to Elizandro's page/g" /var/www/html/*.html

#iii. Using sed to replace all occurrences of "nginx" in the same html file with
#"nginx (pronounced as EngineX)"

sed -i "s/nginx/nginx (pronounced as EngineX)/g" /var/www/html/*.html

#iv. Restarting nginx seervice

service nginx restart
