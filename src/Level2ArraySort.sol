// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

/*
  interface Isolution2 {
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
  }
*/
contract Level2ArraySort {
    function solution(
        uint256[10] calldata unsortedArray
    ) external pure returns (uint256[10] memory) {
        unchecked {
            uint256[10] memory sorted = unsortedArray;
            for (uint i = 1; i < 10; i++) {
                uint key = sorted[i];
                int j = int(i) - 1;
                while ((int(j) >= 0) && (sorted[uint(j)] > key)) {
                    sorted[uint(j + 1)] = sorted[uint(j)];
                    j--;
                }
                sorted[uint(j + 1)] = key;
            }
            return sorted;
        }
    }
}
