// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/Level3UnpackDataSolution.sol"; // MatrixAdditionコントラクトへのパスを適切に設定してください

contract UnpackDataSolutionTest is Test {
    Level3UnpackDataSolution solution;

    function setUp() public {
        solution = new Level3UnpackDataSolution();
    }

    function testSolution() public view {
        uint16 expectedA = 12345;
        bool expectedB = true;
        bytes6 expectedC = "abc123";
        bytes memory packedData = abi.encodePacked(
            expectedA,
            expectedB,
            expectedC
        );
        (uint16 a, bool b, bytes6 c) = solution.solution(packedData);
        assertEq(a, expectedA);
        assertEq(b, expectedB);
        assertEq(c, expectedC);
    }
}
