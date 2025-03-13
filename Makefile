# Description: Makefile for the project


start: ## Start the docker containers
	@echo "Starting the docker containers"
	@docker-compose -f docker-compose.yml -p "local" up -d
	@echo "Containers started"

restart: ## Start the docker containers
	@echo "Starting the docker containers"
	@docker-compose -f docker-compose.yml -p "local" restart
	@echo "Containers started"