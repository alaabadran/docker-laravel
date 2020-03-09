# docker-laravel
A docker image for Laravel using Docker Compose. Using Laravel 5.8

## How to install
- Make sure you have Docker installed
- Make sure you have Docker Compose installed
- Clone the repo 
- Change the domain, by editing the file: `build/nginx/conf/laravel.conf` and changing mydomain.com with your own domain
- Run the following script: `sh ./scripts/install.sh`
- Run `docker-compose build`

### Using MySQL:
- Either import SQL in `./build/mysql/import.sql` 
- Or use a separate database, all you need to di is to set `.env` file with corrent config. This requires to remove (comment) lines 22 to 36 from `docker-compose.yml` file.

### To Run it:
Run the following command: `docker-compose up -d`

### To stop it:
Run the following command: `docker-compose stop`
