// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// interface Isolution7 {
//     function solution(address addr) external view returns (uint256 codeSize);
// }

contract Level7CodeSize {
    function solution(address addr) external view returns (uint256 codeSize) {
        assembly {
            codeSize := extcodesize(addr)
        }
    }
}
