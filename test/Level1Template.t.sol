// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/Level1Template.sol"; // MatrixAdditionコントラクトへのパスを適切に設定してください

contract MatrixAdditionTest is Test {
    Level1Template matrixAddition;

    function setUp() public {
        matrixAddition = new Level1Template();
    }

    function testLevel1Template() public {
        // 2行3列の行列を正しく初期化
        uint256[2][3] memory x = [[1, 2, 3], [4, 5, 6]];
        uint256[2][3] memory y = [[10, 20, 30], [40, 50, 60]];
        uint256[2][3] memory expected = [[11, 22, 33], [44, 55, 66]];

        uint256[2][3] memory result = matrixAddition.solution(x, y);

        for (uint i = 0; i < 2; i++) {
            for (uint j = 0; j < 3; j++) {
                assertEq(result[i][j], expected[i][j], "Matrix addition did not produce the expected result");
            }
        }
    }
}
