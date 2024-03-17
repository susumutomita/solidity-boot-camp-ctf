// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// interface Isolution3 {
//     function solution(
//         bytes memory packed
//     ) external returns (uint16 a, bool b, bytes6 c);
// }

contract Level3UnpackData {
    function solution(
        bytes memory packed
    ) external pure returns (uint16 a, bool b, bytes6 c) {
        assembly {
            a := and(mload(add(packed, 0x2)), 0xFFFF)
            b := gt(and(mload(add(packed, 0x3)), 0xFF), 0)
            c := mload(add(add(packed, 0x20), 3))
        }
        return (a, bool(b), bytes6(c));
    }
}
