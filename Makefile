
.DEFAULT_GOAL := help

fb_init: ## firebase init
	docker run -it --rm -p 9005:9005 -v $(shell pwd):/home/node -e FIREBASE_TOKEN=$(FIREBASE_TOKEN) andreysenov/firebase-tools firebase init

.PHONY: help
help: ## Display this help screen
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
