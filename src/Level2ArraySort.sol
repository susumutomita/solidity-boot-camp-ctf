// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// interface Isolution2 {
//     function solution(
//         uint256[10] calldata unsortedArray
//     ) external returns (uint256[10] memory sortedArray);
// }

contract Level2ArraySort {
    function solution(uint256[10] calldata unsortedArray) external pure returns (uint256[10] memory) {
        unchecked {
            uint256[10] memory sorted = unsortedArray;
            for (uint256 i = 1; i < 10; i++) {
                uint256 key = sorted[i];
                int256 j = int256(i) - 1;
                while ((int256(j) >= 0) && (sorted[uint256(j)] > key)) {
                    sorted[uint256(j + 1)] = sorted[uint256(j)];
                    j--;
                }
                sorted[uint256(j + 1)] = key;
            }
            return sorted;
        }
    }
}
