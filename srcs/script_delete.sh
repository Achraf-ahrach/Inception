docker rm $(docker ps -qa)
docker rmi -f $(docker images -aq)