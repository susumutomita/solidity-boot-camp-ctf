.PHONY: format
format:
	forge fmt

.PHONY: start_local_node
start_local_node:
	anvil

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

.PHONY: deploy_Level1MatrixAddition
deploy_Level1MatrixAddition:
	forge script script/Level1MatrixAddition.s.sol:Level1MatrixAdditionScript --fork-url $(FORK_URL) \
  --private-key $(PRIVATE_KEY) --broadcast

.PHONY: deploy_Level2ArraySort
deploy_Level2ArraySort:
	forge script script/Level2ArraySort.s.sol:Level2ArraySortScript --fork-url $(FORK_URL)  \
  --private-key $(PRIVATE_KEY) --broadcast

.PHONY: deploy_Level3UnpackData
deploy_Level3UnpackData:
	forge script script/Level3UnpackData.s.sol:Level3UnpackDataScript --fork-url $(FORK_URL)  \
	--private-key $(PRIVATE_KEY) --broadcast

.PHONY: deploy_Level4PowersOf2
deploy_Level4PowersOf2:
	forge script script/Level4PowersOf2.s.sol:Level4PowersOf2Script --fork-url $(FORK_URL)  \
	--private-key $(PRIVATE_KEY) --broadcast

.PHONY: deploy_Level5Average
deploy_Level5Average:
	forge script script/Level5Average.s.sol:Level5AverageScript --fork-url $(FORK_URL) \
	--private-key $(PRIVATE_KEY) --broadcast

.PHONY: deploy_Level6VerifyingSignatures
deploy_Level6VerifyingSignatures:
	forge script script/Level6VerifyingSignatures.s.sol:Level6VerifyingSignaturesScript --fork-url $(FORK_URL) \
	--private-key $(PRIVATE_KEY) --broadcast

.PHONY: deploy_Level7CodeSize
deploy_Level7CodeSize:
	forge script script/Level7CodeSize.s.sol:Level7CodeSizeScript --fork-url $(FORK_URL) \
	--private-key $(PRIVATE_KEY) --broadcast

.PHONY: examine_storage_Level1MatrixAddition
examine_storage_Level1MatrixAddition:
	sol2uml storage -c Level1MatrixAddition src

.PHONY: examine_storage_Level2ArraySort
examine_storage_Level2ArraySort:
	sol2uml storage -c Level2ArraySort src

.PHONY: examine_storage_Level3UnpackData
examine_storage_Level3UnpackData:
	sol2uml storage -c Level3UnpackData src

.PHONY: examine_storage_Level4PowersOf2
examine_storage_Level4PowersOf2:
	sol2uml storage -c Level4PowersOf2 src

.PHONY: examine_storage_Level5Average
examine_storage_Level5Average:
	sol2uml storage -c Level5Average src

.PHONY: examine_storage_Level6VerifyingSignatures
examine_storage_Level6VerifyingSignatures:
	sol2uml storage -c Level6VerifyingSignatures src

.PHONY: examine_storage_Level7CodeSize
examine_storage_Level7CodeSize:
	sol2uml storage -c Level7CodeSize src

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

.PHONY: open_storage_Level4PowersOf2
open_storage_Level4PowersOf2:
	open -a Google\ Chrome ./Level4PowersOf2.svg

	.PHONY: open_storage_Level5Average
open_storage_Level5Average:
	open -a Google\ Chrome ./Level5Average.svg

.PHONY: open_storage_Level6VerifyingSignatures
open_storage_Level6VerifyingSignatures:
	open -a Google\ Chrome ./Level6VerifyingSignatures.svg

.PHONY: open_storage_Level7CodeSize
open_storage_Level7CodeSize:
	open -a Google\ Chrome ./Level7CodeSize.svg

.PHONY: examine_storage
examine_storage: examine_storage_Level1MatrixAddition examine_storage_Level2ArraySort examine_storage_Level3UnpackData examine_storage_Level4PowersOf2 examine_storage_Level5Average examine_storage_Level6VerifyingSignatures examine_storage_Level7CodeSize

.PHONY: before_commit
before_commit: format test examine_storage examine_class
