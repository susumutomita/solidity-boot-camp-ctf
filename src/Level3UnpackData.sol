// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

/*
interface Isolution3 {
    function solution(bytes memory packed) external returns (uint16 a, bool b, bytes6 c);
}
*/

contract Level3UnpackData {
    function solution(
        bytes memory packed
    ) external pure returns (uint16 a, bool b, bytes6 c) {
        a = toUint16(packed, 0);
        b = toBool(packed, 2);
        c = toBytes6(packed, 3);

        return (a, b, c);
    }

    function toUint16(
        bytes memory data,
        uint offset
    ) internal pure returns (uint16) {
        uint16 tempUint;

        assembly {
            tempUint := mload(add(add(data, 0x2), offset))
        }

        return tempUint;
    }

    function toBool(
        bytes memory data,
        uint offset
    ) internal pure returns (bool) {
        uint8 tempBoolByte;
        assembly {
            tempBoolByte := mload(add(add(data, 0x1), offset))
        }
        return tempBoolByte != 0;
    }

    function toBytes6(
        bytes memory data,
        uint offset
    ) internal pure returns (bytes6 result) {
        assembly {
            result := mload(add(add(data, 0x20), offset))
        }
        result = bytes6(result);
        return result;
    }
}
