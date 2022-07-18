.PHONY: default
default: run

.PHONY: help
## help: print the help info
help:
	@echo -e "Usage: \n"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

.PHONY: lint
## lint: run ansible-lint
lint:
	@ansible-lint playbooks/arch.yml

.PHONY: run
## run: run playbooks
run:
	@ansible-playbook \
		-i inventories/${INVENTORY_NAME}/hosts.ini \
		playbooks/${PLAYBOOK_NAME}