// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface Isolution {
    function solution(
        uint256[2][3] calldata x,
        uint256[2][3] calldata y
    ) external pure returns (uint256[2][2] memory);
}

// contract Level1Template is Isolution {
//     function solution(
//         uint256[2][3] calldata x,
//         uint256[2][3] calldata y
//     ) external pure override returns (uint256[2][3] memory) {
//         uint256[2][3] memory result;

//         result[0][0] = x[0][0] + y[0][0];
//         result[0][1] = x[0][1] + y[0][1];
//         result[0][2] = x[0][2] + y[0][2];
//         result[1][0] = x[1][0] + y[1][0];
//         result[1][1] = x[1][1] + y[1][1];
//         result[1][2] = x[1][2] + y[1][2];

//         return result;
//     }
// }
