.PHONY: help default up ps do_init

DOCKER_CMD=docker-compose -f compose/upstream_compose.yml
MYSQL_ARGS=database mysql -uroot --database finex_development

default: help

help: 			## Print help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

up: 			## Run the app within compose
up: load_image
	${DOCKER_CMD} up -Vd

init: 			## Seed databases
init: do_init restart-app	## Seed databases

do_init:
	@echo "---WAITING FOR DB TO START---"
	./bin/wait "${DOCKER_CMD} exec -T ${MYSQL_ARGS} -e 'select 1'"
	@echo "---DONE---"
	./bin/init_vault
	sleep 5
	./bin/init_barong
	${DOCKER_CMD} exec -T ${MYSQL_ARGS} < compose/seed.sql

down: 			## Stop application
	${DOCKER_CMD} down -v

ps: 			## Print services status
	${DOCKER_CMD} ps

load_image: polkadex.tar
	docker load --input polkadex.tar

reset:			## Restart app and reset database
reset: down up

exec:			## Exec to mysql shell
	${DOCKER_CMD} exec ${MYSQL_ARGS}

restart-app:		## Restart API and engine
restart-app: load_image
	${DOCKER_CMD} up -Vd api engine

logs:			## Start API and engine logs
	${DOCKER_CMD} logs -f api engine
