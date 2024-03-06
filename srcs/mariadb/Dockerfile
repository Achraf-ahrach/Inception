# FROM alpine:3.19.1
FROM ubuntu:noble-20240212

RUN apt update && apt install -y mariadb-server

# COPY conf/default /etc/mysql/

EXPOSE 3306

# CMD ["nginx", "-g", "daemon off;"]

CMD ["mysqld_safe"]