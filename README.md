# docker-laravel
A docker image for Laravel

### How to install
- Make sure you have Docker installed
- Make sure you have Docker Compose installed
- Clone the repo 
- Change the domain, by editing the file: `build/nginx/conf/laravel.conf` and changing mydomain.com with your own domain
- Run the following script: `sh ./scripts/install.sh`
- Run `docker-compose build`

### To Run it:
Run the following command: `docker-compose up -d`

### To stop it:
Run the following command: `docker-compose stop`
