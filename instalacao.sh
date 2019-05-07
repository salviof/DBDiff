sudo yum install composer
composer self-update
composer install --prefer-dist
php -r "readfile('https://getcomposer.org/installer');" | php
php composer.phar require "dbdiff/dbdiff:@dev"
sudo dnf install php-mysqli


