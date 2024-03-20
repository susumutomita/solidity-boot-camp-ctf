// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// interface Isolution4 {
//     function solution(uint256 number) external pure returns (uint256);
// }

contract Level4PowersOf2 {
    // stdin: 1                     stdout: 1 or 2**0
    // stdin: 10                    stdout: 8 or 2**3
    // stdin: 21                    stdout: 16 or 2**4
    // stdin: 2048                  stdout: 2048 or 2**11
    // stdin: 9223372036854775808   stdout: 9223372036854775808 or 2**63
    // stdin: 0xffffffff            stdout: 2147483648 or 0x80000000 or 2**31
    function solution(uint256 number) external pure returns (uint256) {
        // 0の場合は直接0を返す
        if (number == 0) {
            return 0;
        }

        // 1以下の場合は、2^0 = 1 を返す
        if (number <= 1) {
            return 1;
        }

        // 2のべき乗を計算
        uint256 powerOfTwo = 1;
        while (powerOfTwo <= number / 2) {
            powerOfTwo *= 2;
        }

        return powerOfTwo;
    }
}
