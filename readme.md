# Docker Setup for Laravel projects

### Containers
- PHP-fpm:7.3
- MariaDB
- nginx

## Setup instructions

* Checkout Leads Repo

```
git clone <repo>
cd <repo>
git clone <laravel-docker-git-link> docker
echo "docker" >> .gitignore
```

Replace ```app-name``` with project repo name

from ```docker``` folder
Composer install & running migrations

``` docker-compose exec app /bin/bash ```

inside the container

``` composer install ```

``` docker-compose exec app php artisan migrate ```
