docker-tests:
	docker volume create --name=caddy_data && docker-compose --env-file ./app/.env -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

docker-dev:
	docker volume create --name=caddy_data && docker-compose --env-file ./app/.env up

docker-build:
	docker-compose -f docker-compose.yml build app

docker-push:
	docker-compose -f docker-compose.yml push app