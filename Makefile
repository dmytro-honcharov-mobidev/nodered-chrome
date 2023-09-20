ifeq ($(OS),Windows_NT)
    uname_S := Windows
else
    uname_S := $(shell uname -s)
endif

DC=docker-compose

.PHONY: help
help: ## This help message
    @awk -F ':|##' '/^[^\t].+?:.*?##/ {printf "\033[36m%-15s\033[0m %s\n", $$1, $$NF}' $(MAKEFILE_LIST)

.PHONY: build
build:
	$(DC) build --no-cache 

.PHONY: start
start:
	$(DC) up

.PHONY: stop
stop:
	$(DC) down