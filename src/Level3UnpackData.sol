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
        require(packed.length >= 9, "Invalid data length");
        a = toUint16(packed, 0);
        b = toBool(packed, 2);
        c = toBytes6(packed, 3);

        return (a, b, c);
    }

    function toUint16(
        bytes memory data,
        uint offset
    ) internal pure returns (uint16) {
        require(data.length >= offset + 2, "Out of bounds");
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
        require(data.length >= offset + 1, "Out of bounds");
        bool tempBool;

        assembly {
            tempBool := mload(add(add(data, 0x1), offset))
        }

        return tempBool;
    }

    function toBytes6(
        bytes memory data,
        uint offset
    ) internal pure returns (bytes6 result) {
        require(data.length >= offset + 6, "Out of bounds");
        assembly {
            result := mload(add(add(data, 0x20), offset))
        }
        result = bytes6(result);
    }
}
