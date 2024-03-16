// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IsolutionLoop {
    function sloop(
        uint256[2][2] calldata x,
        uint256[2][2] calldata y
    ) external pure returns (uint256[2][2] memory);
}

contract MatrixAdditionWithLoop is IsolutionLoop {
    function sloop(
        uint256[2][2] calldata x,
        uint256[2][2] calldata y
    ) external pure override returns (uint256[2][2] memory) {
        uint256[2][2] memory result;

        for (uint i = 0; i < 2; i++) {
            for (uint j = 0; j < 2; j++) {
                result[i][j] = x[i][j] + y[i][j];
            }
        }

        return result;
    }
}
