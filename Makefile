.PHONY: up
up:
	docker-compose up -d

.PHONY: up-a
up-a:
	docker-compose up -d admin

.PHONY: up-c
up-c:
	docker-compose up -d client

.PHONY: log-a
log-a:
	docker-compose logs -f admin

.PHONY: log-c
log-c:
	docker-compose logs -f client

.PHONY: rm
rm:
	-docker rm $(shell docker ps -a --filter 'status=exited' -q)

.PHONY: res-a
res-a:
	docker-compose restart admin

.PHONY: res-c
res-c:
	docker-compose restart client

.PHONY: build-a
build-a:
	docker-compose build admin

.PHONY: build-c
build-c:
	docker-compose build client

.PHONY: clean
clean: down rm rmi

.PHONY: down
down:
	docker-compose down

.PHONY: rmi
rmi:
	docker image prune -f

.PHONY: exec
exec:
	docker exec -it article sh
