// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/Level3UnpackData.sol"; // MatrixAdditionコントラクトへのパスを適切に設定してください

contract UnpackDataSolutionTest is Test {
    Level3UnpackData unpackData;

    function setUp() public {
        unpackData = new Level3UnpackData();
    }

    function testLevel3UnpackData() public view {
        uint16 expectedA = 12345;
        bool expectedB = true;
        bytes6 expectedC = "abc123";
        bytes memory packedData = abi.encodePacked(
            expectedA,
            expectedB,
            expectedC
        );
        console.logBytes(packedData);
        (uint16 a, bool b, bytes6 c) = unpackData.solution(packedData);
        assertEq(a, expectedA);
        assertEq(b, expectedB);
        assertEq(c, expectedC);
    }
}
