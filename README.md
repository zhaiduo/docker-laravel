# docker-laravel
Laravel 5 with Dockerized PHP-FPM, MySQL and nginx using docker-compose

## Usage

### Get Composer

    docker-compose run --rm phpnginx curl -O https://getcomposer.org/installer
    docker-compose run --rm phpnginx php installer

### Install Laravel 5 using Composer

	docker-compose run --rm phpnginx php composer.phar create-project laravel/laravel src --prefer-dist


#######################

http://harshjv.github.io/blog/laravel-5-with-dockerized-gulp-php-fpm-mysql-and-nginx/


Objective

Setup Laravel 5 with dockerized Gulp, PHP-FPM, MySQL and nginx using docker orchestration tool, docker-compose.

This post presumes that docker & docker-compose are already installed on your system.
1. Clone repository

git clone https://github.com/harshjv/docker-laravel.git
2. Run services

docker-compose up
3. Download Composer

docker-compose run --rm phpnginx curl -O https://getcomposer.org/installer
docker-compose run --rm phpnginx php installer
4. Install Laravel 5 using Composer

docker-compose run --rm phpnginx php composer.phar create-project laravel/laravel src --prefer-dist
5. Permissions

Laravel 5 requires vendor and storage and directories within them to have write permission by web server.

chmod -R 777 vendor storage
If you are running Docker using boot2docker, check this post to configure NFS with boot2docker and OS X in order to fix write permissions.
6. Hooray

Visit http://localhost to view the project.


