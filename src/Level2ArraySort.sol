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
        uint256[10] memory sortedArray = unsortedArray;
        bool swapped;
        do {
            swapped = false;
            for (uint i = 0; i < sortedArray.length - 1; i++) {
                if (sortedArray[i] > sortedArray[i + 1]) {
                    (sortedArray[i], sortedArray[i + 1]) = (
                        sortedArray[i + 1],
                        sortedArray[i]
                    );
                    swapped = true;
                }
            }
        } while (swapped);
        return sortedArray;
    }
}
