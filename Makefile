default: server

server: build run
bash: shell

build:
	docker-compose build

run:
	docker-compose up

shell:
	docker-compose exec web bash

kill:
	docker-compose kill

clean: kill
	docker-compose rm -v
