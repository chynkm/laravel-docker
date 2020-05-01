# Docker Setup for Laravel projects

### Containers
- PHP-fpm:7.3
- MariaDB
- nginx

## Setup instructions

* Checkout Repo

```
git clone <repo>
cd <repo>
git clone <laravel-docker-git-link> docker
echo "docker" >> .gitignore
```

In ```docker-compose.yml``` Replace ```app-name``` with project repo name

from ```docker``` folder

```
docker-compose build
docker-compose up -d
docker-compose down
update the .env file DB_HOST to "mysql"; the equivalent service

docker-compose exec app php artisan migrate
docker-compose exec app php artisan tinker
where <app> is the container name

docker-compose exec app ./vendor/bin/phpunit
```

To access PHP container
```docker-compose exec app-name /bin/bash```
