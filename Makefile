rebuild:
	@docker-compose -p zammaddockercompose  up --force-recreate -d
start:
	@docker-compose -p zammaddockercompose  up -d
run_db:
	@docker-compose -p zammaddockercompose  up -d zammad-postgresql
stop:
	@docker-compose -p zammaddockercompose  stop

ssh:
	@docker exec -it --user root zammaddockercompose_zammad-railsserver_1 /bin/bash
ssh_db:
	@docker exec -it --user root zammaddockercompose_zammad-postgresql_1 /bin/bash

ssh_nginx:
	@docker exec -it --user root zammaddockercompose_zammad-nginx_1 /bin/bash
