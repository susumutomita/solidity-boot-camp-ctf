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
    function solution(
        bytes32 messageHash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external pure returns (address signer) {
        bytes32 ethSignedMessageHash = keccak256(
            abi.encodePacked("\x19Ethereum Signed Message:\n32", messageHash)
        );

        signer = ecrecover(ethSignedMessageHash, v, r, s);

        return signer;
    }
}
