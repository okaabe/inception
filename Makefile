up:
	/Applications/Docker.app/Contents/Resources/bin/docker compose -f srcs/docker-compose.yml up -d 
down:
	/Applications/Docker.app/Contents/Resources/bin/docker compose -f srcs/docker-compose.yml down

restart: down up

prune:
	/Applications/Docker.app/Contents/Resources/bin/docker compose  -f srcs/docker-compose.yml rm --all
	/Applications/Docker.app/Contents/Resources/bin/docker system prune --all
# .PHONY: up down restart prune