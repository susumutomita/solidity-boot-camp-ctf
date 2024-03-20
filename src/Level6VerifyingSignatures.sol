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
    function solution(bytes32 messageHash, uint8 v, bytes32 r, bytes32 s) external pure returns (address signer) {
        // Ethereumで署名メッセージを検証する際のプレフィックス
        bytes memory prefix = "\x19Ethereum Signed Message:\n32";
        // プレフィックス付きのメッセージハッシュを計算
        bytes32 ethSignedMessageHash = keccak256(abi.encodePacked(prefix, messageHash));

        // ecrecover関数を使用して署名者のアドレスを復元
        signer = ecrecover(ethSignedMessageHash, v, r, s);

        return signer;
    }
}
