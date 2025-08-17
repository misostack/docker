# Description: Makefile for the project


start: ## Start the docker containers
	@echo "Starting the docker containers"
	@docker-compose -f docker-compose.yml -p "local" up -d
	@echo "Containers started"

rebuild: ## Rebuild the docker containers
	@echo "Rebuilding the docker containers"
	@docker-compose -f docker-compose.yml -p "local" up -d --build
	@echo "Containers rebuilt"

restart: ## Start the docker containers
	@echo "Starting the docker containers"
	@docker-compose -f docker-compose.yml -p "local" restart
	@echo "Containers started"