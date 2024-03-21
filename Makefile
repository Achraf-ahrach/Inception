all: up

up:
	@docker compose -f ./srcs/docker-compose.yml up -d

ps:
	@docker compose -f ./srcs/docker-compose.yml ps

start:
	@docker compose -f srcs/docker-compose.yml start

stop:
	@docker compose -f srcs/docker-compose.yml stop

down:
	@docker compose -f srcs/docker-compose.yml down

prune:
	@docker system prune -af

script:
	@docker stop $$(docker ps -aq)
	@docker rm $$(docker ps -qa)
	@docker rmi -f $$(docker images -aq)
	@docker volume rm mariadb wordpress
	@docker network prune -f