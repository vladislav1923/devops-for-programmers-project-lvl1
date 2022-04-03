ci:
	docker-compose --env-file ./app/.env -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dev:
	docker-compose --env-file ./app/.env up

build:
	docker-compose -f docker-compose.yml build app

push:
	docker-compose -f docker-compose.yml push app