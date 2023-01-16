.PHONY: phony
phony: help

# Provide version
VERSION=0.1.0

# GitHub Actions bogus variables
GITHUB_REF ?= refs/heads/null
GITHUB_SHA ?= aabbccddeeff

# Other variables and constants
CURRENT_BRANCH := $(shell echo $(GITHUB_REF) | sed 's/refs\/heads\///')
GITHUB_SHORT_SHA := $(shell echo $(GITHUB_SHA) | cut -c1-7)
DOCKER_USER_ID := christophshyper
DOCKER_ORG_NAME := devopsinfra
DOCKER_IMAGE := docker-simple-runner
DOCKER_NAME := $(DOCKER_ORG_NAME)/$(DOCKER_IMAGE)
BUILD_DATE := $(shell date -u +"%Y-%m-%dT%H:%M:%SZ")

# Some cosmetics
SHELL := bash
TXT_RED := $(shell tput setaf 1)
TXT_GREEN := $(shell tput setaf 2)
TXT_YELLOW := $(shell tput setaf 3)
TXT_RESET := $(shell tput sgr0)
define NL


endef

# Main actions
.PHONY: help check build build-plain build-aws build-gcp build-azure push

help: ## Display help prompt
	$(info Available options:)
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "$(TXT_YELLOW)%-25s $(TXT_RESET) %s\n", $$1, $$2}'

build: ## Build Docker images
	$(info $(NL)$(TXT_GREEN)Building Docker image:$(TXT_YELLOW) $(DOCKER_NAME):$(VERSION)$(TXT_RESET))
	@docker build \
		--build-arg VCS_REF=$(GITHUB_SHORT_SHA) \
		--build-arg BUILD_DATE=$(BUILD_DATE) \
		--file=Dockerfile \
		--tag=$(DOCKER_NAME):$(VERSION) .

push: ## Push to DockerHub
	$(info $(NL)$(TXT_GREEN) == STARTING DEPLOYMENT == $(TXT_RESET))
	$(info $(NL)$(TXT_GREEN)Logging to DockerHub$(TXT_RESET))
	@echo $(DOCKER_TOKEN) | docker login -u $(DOCKER_USER_ID) --password-stdin
	$(info $(NL)$(TXT_GREEN)Pushing image:$(TXT_YELLOW) $(DOCKER_NAME):$(VERSION)$(TXT_RESET))
	@docker tag $(DOCKER_NAME):$(VERSION) $(DOCKER_NAME):latest
	@docker push $(DOCKER_NAME):$(VERSION)
	@docker push $(DOCKER_NAME):latest
