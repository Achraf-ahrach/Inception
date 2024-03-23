FROM debian:bullseye

RUN apt update && apt upgrade -y

RUN apt install -y curl php-fpm php-mysql

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN sed -i 's/^listen = \/run\/php\/php7.4-fpm\.sock/listen = 0.0.0.0:9000/' /etc/php/7.4/fpm/pool.d/www.conf

COPY ./tools/ .

RUN chmod +x script.sh

WORKDIR /var/www/html/

EXPOSE 9000

CMD ["bash", "/script.sh"]
