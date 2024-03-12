# FROM alpine:3.19.1
FROM ubuntu:noble-20240212

RUN apt update && apt upgrade -y

RUN apt install -y nginx openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout localhost.key -out localhost.crt \
    -subj "/C=US/ST=State/L=City/O=Organization/OU=Organizational Unit/CN=localhost"

RUN cp localhost.crt ./etc/ssl/certs/localhost.crt

RUN cp localhost.key ./etc/ssl/private/localhost.key

COPY conf/default /etc/nginx/sites-enabled/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]