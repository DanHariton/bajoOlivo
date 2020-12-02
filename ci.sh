#!/bin/bash

cd /home/ubuntu/code/bajoOlivo
composer install
php bin/console doctrine:database:create
php bin/console doctrine:schema:update --dump-sql --force
npm i
npm run prod
sudo ln -sfn /home/ubuntu/code/bajoOlivo/public /var/www/html
sudo service httpd restart