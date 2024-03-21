// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// interface Isolution5 {
//     function solution(int256 a, int256 b) external pure returns (int256);
// }

contract Level5Average {
    function solution(int256 a, int256 b) external pure returns (int256) {
        unchecked {
            return (a / 2) + (b / 2) + (((a % 2) + (b % 2)) >= 1 ? int256(1) : int256(0));
        }
    }
}
