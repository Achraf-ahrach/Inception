# FROM alpine:3.19.1
FROM ubuntu:noble-20240212

RUN apt update && apt upgrade -y

RUN apt install -y curl

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN apt install -y php-fpm php-mysql

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN sed -i 's/^listen = \/run\/php\/php8.3-fpm\.sock/listen = 0.0.0.0:9000/' /etc/php/8.3/fpm/pool.d/www.conf

COPY ./tools/ .

RUN chmod +x script.sh

WORKDIR /var/www/html/

# RUN wp --allow-root core download

EXPOSE 9000

# CMD ["/usr/sbin/php-fpm8.3", "-F"]

CMD ["bash", "/script.sh"]