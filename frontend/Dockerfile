FROM ubuntu
ENV TZ=Asia/Dubai

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get -y install tzdata


RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt update
RUN apt-get -y install vim apache2
RUN apt-get -y install php8.0 
RUN apt-get -y install php8.0-common php8.0-fpm php8.0-mysql php8.0-gmp php8.0-xml php8.0-xmlrpc php8.0-curl php8.0-mbstring php8.0-gd php8.0-dev php8.0-imap php8.0-opcache php8.0-readline php8.0-soap php8.0-zip php8.0-intl php8.0-cli libapache2-mod-php8.0 php-curl
RUN apt-get -y install composer

WORKDIR /var/www/html

RUN rm index.html
COPY Seoland/ /var/www/html/

RUN composer update
RUN composer install
RUN php artisan key:generate

RUN cd /var/www/html
RUN find . -type d -exec chmod 775 {} \;; find . -type f -exec chmod 777 {} \;;
RUN chown -R www-data:root .
RuN vendor/bin/phpunit  --migrate-configuration

COPY seoland.conf /etc/apache2/sites-available
RUN cd /etc/apache2/sites-available; a2ensite seoland.conf; a2dissite 000-default.conf
RUN a2enmod php8.0 rewrite
EXPOSE 80

