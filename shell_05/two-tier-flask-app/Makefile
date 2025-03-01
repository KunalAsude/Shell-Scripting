DOCKER_COMPOSE := docker-compose

OS := $(shell uname)


build:
ifeq ($(OS),Linux)
	@echo "Running the Build For $(OS)"
	$(DOCKER_COMPOSE) build
endif
ifeq ($(OS),Windows_NT)
	@echo "Please Enter the Windows Commands"
endif

up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

clean:
	docker system prune

