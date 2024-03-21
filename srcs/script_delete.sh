docker stop $(docker ps -aq)
docker rm $(docker ps -qa)
docker rmi -f $(docker images -aq)
docker volume rm mariadb wordpress
docker network prune -f
