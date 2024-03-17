// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/Level1MatrixAddition.sol"; // MatrixAdditionコントラクトへのパスを適切に設定してください

contract MatrixAdditionTest is Test {
    Level1MatrixAddition matrixAddition;

    function setUp() public {
        matrixAddition = new Level1MatrixAddition();
    }

    function testLevel1MatrixAddition() public view {
        uint256[2][3] memory x = [
            [uint256(1), uint256(2)],
            [uint256(3), uint256(4)],
            [uint256(5), uint256(6)]
        ];
        uint256[2][3] memory y = [
            [uint256(10), uint256(20)],
            [uint256(30), uint256(40)],
            [uint256(50), uint256(60)]
        ];

        uint256[2][3] memory result = matrixAddition.solution(x, y);
        assertEq(
            result[0][0],
            uint256(11),
            "Matrix addition did not produce the expected result at [0][0]"
        );
        assertEq(
            result[0][1],
            uint256(22),
            "Matrix addition did not produce the expected result at [0][1]"
        );
        assertEq(
            result[1][0],
            uint256(33),
            "Matrix addition did not produce the expected result at [0][2]"
        );
        assertEq(
            result[1][1],
            uint256(44),
            "Matrix addition did not produce the expected result at [1][0]"
        );
        assertEq(
            result[2][0],
            uint256(55),
            "Matrix addition did not produce the expected result at [1][1]"
        );
        assertEq(
            result[2][1],
            uint256(66),
            "Matrix addition did not produce the expected result at [1][2]"
        );
    }
}
