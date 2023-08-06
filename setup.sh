#!/bin/bash

chmod -R 777 /var/www
echo Servername localhost >> /etc/apache2/apache2.conf
sed -i 's/80/81/' /etc/apache2/ports.conf
sed -i 's/80/81/' /etc/apache2/sites-enabled/000-default.conf

docker-entrypoint.sh apache2-foreground
