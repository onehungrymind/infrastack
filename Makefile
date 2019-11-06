help: ## Help documentation
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_0-9-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

create-postgres-db: ## Create Postgres Database and Table in Docker
	@(cd server && sh postgres.sh)

start-local-server: ## Start Go Server application. http://localhost:8080/api/v1/users
	@(cd server && go run main.go)

clean: remove-container remove-image ## Remove both docker container and image.

remove-container: ## Stop and Remove created container named infrastack-postgres
	docker stop infrastack-postgres
	docker rm infrastack-postgres

remove-image: ## Remove pulled image postgres:alpine
	docker rmi postgres:alpine
