// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// interface Isolution6 {
//     function solution(
//       bytes32 messageHash,
//       uint8 v,
//       bytes32 r,
//       bytes32 s
//       ) external pure
//     returns (address signer);
// }

contract Level6VerifyingSignatures {
    function solution(address owner, bytes32 messageHash, uint8 v, bytes32 r, bytes32 s)
        external
        pure
        returns (bool isSignedByOwner)
    {}
}
