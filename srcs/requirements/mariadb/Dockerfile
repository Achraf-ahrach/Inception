FROM debian:bullseye

RUN apt update && apt install -y mariadb-server

COPY tools/db.sh .

RUN chmod +x db.sh

EXPOSE 3306

CMD ["bash", "db.sh"]