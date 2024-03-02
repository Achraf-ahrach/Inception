# FROM alpine:3.19.1
FROM ubuntu:noble-20240212

# RUN apk --update add nginx
RUN apt update && apt install -y nginx

COPY index.html ./usr/share/nginx/html/index.html

RUN apt install openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout localhost.key -out localhost.crt \
    -subj "/C=US/ST=State/L=City/O=Organization/OU=Organizational Unit/CN=localhost"

RUN cp localhost.crt ./etc/ssl/certs/localhost.crt

RUN cp localhost.key ./etc/ssl/private/localhost.key
# RUN rm /etc/nginx/nginx.conf
# COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]