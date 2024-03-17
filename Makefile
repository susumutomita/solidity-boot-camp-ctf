.PHONY: format
format:
	forge fmt

.PHONY: format_check
format_check:
	forge fmt --check

.PHONY: test
test:
	forge test --gas-report

.PHONY: test_watch
test_watch:
	forge test --gas-report --watch

.PHONY: test_debug
test_debug:
	forge test --gas-report -vvvvv --watch

.PHONY: examine_storage_Level1MatrixAddition
examine_storage_Level1MatrixAddition:
	sol2uml storage -c Level1MatrixAddition src

.PHONY: examine_storage_Level2ArraySort
examine_storage_Level2ArraySort:
	sol2uml storage -c Level2ArraySort src

.PHONY: examine_storage_Level3UnpackData
examine_storage_Level3UnpackData:
	sol2uml storage -c Level3UnpackData src

.PHONY: examine_class
examine_class:
	sol2uml src

.PHONY: open_class
open_class:
	open -a Google\ Chrome ./classDiagram.svg

.PHONY: open_storage_Level1MatrixAddition
open_storage_Level1MatrixAddition:
	open -a Google\ Chrome ./Level1MatrixAddition.svg

.PHONY: open_storage_Level2ArraySort
open_storage_Level2ArraySort:
	open -a Google\ Chrome ./Level2ArraySort.svg

.PHONY: open_storage_Level3UnpackData
open_storage_Level3UnpackData:
	open -a Google\ Chrome ./Level3UnpackData.svg

.PHONY: examine_storage
examine_storage: examine_storage_Level1MatrixAddition examine_storage_Level2ArraySort examine_storage_Level3UnpackData

.PHONY: before_commit
before_commit: format test examine_storage examine_class
