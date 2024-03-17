// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "forge-std/console.sol";
/*
interface Isolution3 {
    function solution(bytes memory packed) external returns (uint16 a, bool b, bytes6 c);
}
*/

contract Level3UnpackData {
    function solution(
        bytes memory packed
    ) external view returns (uint16 a, bool b, bytes6 c) {
        console.logBytes(packed);
        (a, b, c) = abi.decode(packed, (uint16, bool, bytes6));
        console.logUint(a);
        console.logBool(b);
        console.logBytes6(c);
        return (a, b, c);
    }
}
