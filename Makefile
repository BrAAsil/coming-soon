#
# vim:ft=make
# Makefile
#

GREEN  := $(shell tput -Txterm setaf 2)
YELLOW := $(shell tput -Txterm setaf 3)
WHITE  := $(shell tput -Txterm setaf 7)
CYAN   := $(shell tput -Txterm setaf 6)
RESET  := $(shell tput -Txterm sgr0)

.PHONY: all build clean

all: help

## Dev:
build: clean ## Build the site and put the minified output in ./public
	mkdir -p ./public
	bunx tailwindcss -i ./assets/css/input.css -o ./src/output.css -m
	bunx html-minifier --file-ext html --output-dir ./public --input-dir ./src --collapse-whitespace --remove-comments --remove-optional-tags --remove-redundant-attributes --remove-script-type-attributes --remove-tag-whitespace --use-short-doctype --minify-css true --minify-js true
	cp src/*.css public
	cp src/*.png public
	cp src/*.webp public
	cp src/*.ico public

clean: ## Remove build related files
	rm -fr ./public

serve: ## Start the dev HTTP server
	bunx http-server src

## Help:
help: ## Show this help.
	@echo ''
	@echo 'Usage:'
	@echo '  ${YELLOW}make${RESET} ${GREEN}<target>${RESET}'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} { \
		if (/^[a-zA-Z_-]+:.*?##.*$$/) {printf "    ${YELLOW}%-20s${GREEN}%s${RESET}\n", $$1, $$2} \
		else if (/^## .*$$/) {printf "  ${CYAN}%s${RESET}\n", substr($$1,4)} \
		}' $(MAKEFILE_LIST)
