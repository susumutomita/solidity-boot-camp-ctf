// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface Isolution {
    function solution(
        uint256[2][3] calldata x,
        uint256[2][3] calldata y
    ) external pure returns (uint256[2][3] memory);
}

contract Level1MatrixAddition {
    function solution(
        uint256[2][3] calldata x,
        uint256[2][3] calldata y
    ) external pure returns (uint256[2][3] memory finalArray) {
        finalArray[0][0] = x[0][0] + y[0][0];
        finalArray[0][1] = x[0][1] + y[0][1];
        finalArray[1][0] = x[1][0] + y[1][0];
        finalArray[1][1] = x[1][1] + y[1][1];
        finalArray[2][0] = x[2][0] + y[2][0];
        finalArray[2][1] = x[2][1] + y[2][1];
        return finalArray;
    }
}
