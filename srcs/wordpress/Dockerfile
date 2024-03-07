# FROM alpine:3.19.1
FROM ubuntu:noble-20240212

RUN apt-get update && apt install -y curl

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN apt install -y php-fpm

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html

RUN wp --allow-root core download

WORKDIR /

EXPOSE 3306

# CMD ["nginx", "-g", "daemon off;"]
