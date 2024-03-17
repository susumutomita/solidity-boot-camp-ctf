.PHONY: test
test:
	forge test --gas-report

.PHONY: test_watch
test_watch:
	forge test --gas-report --watch

.PHONY: test_debug
test_debug:
	forge test --gas-report -vvvvv --watch

.PHONY: examine_storage_Level1Template
examine_storage_Level1Template:
	sol2uml storage -c Level1Template src

.PHONY: examine_storage_Level2Template
examine_storage_Level2Template:
	sol2uml storage -c Level2Template src

.PHONY: examine_class
examine_class:
	sol2uml src

.PHONY: open_class
open_class:
	open -a Google\ Chrome ./classDiagram.svg

.PHONY: open_storage_Level1Template
open_storage_Level1Template:
	open -a Google\ Chrome ./Level1Template.svg

.PHONY: open_storage_Level2Template
open_storage_Level2Template:
	open -a Google\ Chrome ./Level2Template.svg

.PHONY: before_commit
before_commit: test examine_storage examine_class
