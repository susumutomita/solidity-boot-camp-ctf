// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/Level2ArraySort.sol"; // MatrixAdditionコントラクトへのパスを適切に設定してください

contract ArraySortTest is Test {
    Level2ArraySort sortArray;

    function setUp() public {
        sortArray = new Level2ArraySort();
    }

    // function testLevel2ArraySort() public view {
    //     uint256[10] memory unsortedArray = [
    //         uint256(7),
    //         uint256(3),
    //         uint256(9),
    //         uint256(1),
    //         uint256(5),
    //         uint256(8),
    //         uint256(4),
    //         uint256(2),
    //         uint256(6),
    //         uint256(0)
    //     ];
    //     uint256[10] memory expectedSortedArray = [
    //         uint256(0),
    //         uint256(1),
    //         uint256(2),
    //         uint256(3),
    //         uint256(4),
    //         uint256(5),
    //         uint256(6),
    //         uint256(7),
    //         uint256(8),
    //         uint256(9)
    //     ];

    //     uint256[10] memory sortedArray = sortArray.solution(unsortedArray);

    //     for (uint256 i = 0; i < sortedArray.length; i++) {
    //         assertEq(sortedArray[i], expectedSortedArray[i]);
    //     }
    // }

    function testLevel2ArraySortNonZero() public view {
        uint256[10] memory unsortedArray = [
            uint256(7),
            uint256(3),
            uint256(9),
            uint256(1),
            uint256(5),
            uint256(8),
            uint256(4),
            uint256(2),
            uint256(6),
            uint256(10)
        ];
        uint256[10] memory expectedSortedArray = [
            uint256(1),
            uint256(2),
            uint256(3),
            uint256(4),
            uint256(5),
            uint256(6),
            uint256(7),
            uint256(8),
            uint256(9),
            uint256(10)
        ];

        uint256[10] memory sortedArray = sortArray.solution(unsortedArray);

        for (uint256 i = 0; i < sortedArray.length; i++) {
            assertEq(sortedArray[i], expectedSortedArray[i]);
        }
    }
}
