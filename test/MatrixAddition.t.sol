// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/MatrixAddition.sol";

contract MatrixAdditionTest is Test {
    MatrixAddition matrixAddition;

    function setUp() public {
        matrixAddition = new MatrixAddition();
    }

    function testMatrixAddition() public view {
        uint256[2][2] memory x = [
            [uint256(1), uint256(2)],
            [uint256(3), uint256(4)]
        ];
        uint256[2][2] memory y = [
            [uint256(5), uint256(6)],
            [uint256(7), uint256(8)]
        ];

        uint256[2][2] memory result = matrixAddition.solutiondirect(x, y);

        assertEq(
            result[0][0],
            6,
            "Matrix addition did not produce the expected result at [0][0]"
        );
        assertEq(
            result[0][1],
            8,
            "Matrix addition did not produce the expected result at [0][1]"
        );
        assertEq(
            result[1][0],
            10,
            "Matrix addition did not produce the expected result at [1][0]"
        );
        assertEq(
            result[1][1],
            12,
            "Matrix addition did not produce the expected result at [1][1]"
        );
    }
}
