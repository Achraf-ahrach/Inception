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

clean:
	@docker stop $$(docker ps -q) || true
	@docker rm $$(docker ps -qa) || true
	@docker rmi -f $$(docker images -aq) || true
	@docker volume rm $$(docker volume ls -q) || true
	@docker network prune -f || true

fclean: clean
	@sudo rm -rf ~/data/wordpress/* ~/data/mariadb/*

re: fclean all
