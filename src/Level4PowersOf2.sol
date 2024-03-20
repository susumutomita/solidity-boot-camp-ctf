// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// interface Isolution4 {
//     function solution(uint256 number) external pure returns (uint256);
// }

contract Level4PowersOf2 {
    function solution(uint256 number) external pure returns (uint256) {
        unchecked {
            if (number == 0) return 1;
            if (number == 1) return 1;
            if ((number & (number - 1)) == 0) {
                return number;
            }
            number--;
            number |= number >> 1;
            number |= number >> 2;
            number |= number >> 4;
            number |= number >> 8;
            number |= number >> 16;
            number |= number >> 32;
            number |= number >> 64;
            number |= number >> 128;
            return uint256((number + 1) >> 1);
        }
    }
}
