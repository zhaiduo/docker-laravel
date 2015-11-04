#!/bin/bash

docker-compose run --rm phpnginx curl -O https://getcomposer.org/installer
docker-compose run --rm phpnginx php installer

#docker-compose run --rm phpnginx php composer.phar install
docker-compose run --rm phpnginx php composer.phar clear-cache
docker-compose run --rm phpnginx php composer.phar create-project laravel/laravel src --prefer-dist

