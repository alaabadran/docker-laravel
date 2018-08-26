#!/usr/bin/env bash

if ! [ -x "$(command -v docker)" ];
	then
		echo 'Docker is not installed.' >&2
		if ! [ -x "$(command -v curl)" ];
			then
				sudo apt-get update
				sudo apt-get install curl
		fi
		curl -fsSL https://get.docker.com/ | sh
		sudo service docker start
		sudo usermod -aG docker ubuntu
fi

if ! [ -x "$(command -v docker-compose)" ]; then
	echo 'Docker Compose is not installed.' >&2
	curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > docker-compose
	sudo mv docker-compose /usr/local/bin/docker-compose
	docker-compose --version 
fi

sudo rm -rf /home/ubuntu/laravel

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

mv composer.phar src/composer.phar

cd src/ && php composer.phar install && cd ..

 
