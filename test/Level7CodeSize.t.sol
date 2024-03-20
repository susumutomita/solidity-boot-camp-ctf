// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/Level7CodeSize.sol"; // Adjust this path according to your file structure

contract Level7CodeSizeTest is Test {
    Level7CodeSize public level7CodeSize;

    function setUp() public {
        level7CodeSize = new Level7CodeSize();
    }

    function testCodeSizeOfContract() public view {
        uint256 codeSize = level7CodeSize.solution(address(level7CodeSize));
        assertTrue(
            codeSize > 0,
            "The code size should be greater than 0 for a contract."
        );
    }

    function testCodeSizeOfEOA() public view {
        address eoaAddress = address(
            0x1234567890123456789012345678901234567890
        );
        uint256 codeSize = level7CodeSize.solution(eoaAddress);
        assertEq(codeSize, 0, "The code size should be 0 for an EOA.");
    }
}
