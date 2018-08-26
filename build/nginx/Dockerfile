FROM nginx:1.15.0

RUN groupadd -g 1000 app \
 && useradd -g 1000 -u 1000 -d /var/www -s /bin/bash app

RUN apt-get update && apt-get install -y curl

RUN usermod -aG sudo app

RUN touch /var/run/nginx.pid
RUN mkdir /sock
RUN chown -R app:app /var/cache/nginx/ /var/run/nginx.pid /sock

COPY ./conf/nginx.conf /etc/nginx/
COPY ./conf/laravel.conf /etc/nginx/conf.d/default.conf

USER app:app

WORKDIR /var/www/html/laravel
