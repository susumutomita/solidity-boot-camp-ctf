// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/AbiDecode.sol"; // AbiDecodeコントラクトへのパスを適切に設定してください

contract AbiDecodeTest is Test {
    AbiDecode abiDecode;

    function setUp() public {
        abiDecode = new AbiDecode();
    }

    function testEncodeDecode() public {
        uint16 x = 42;
        bool hoge = true;
        bytes6 c = "abc123";
        bytes memory encodedData = abiDecode.encode(x, hoge, c);
        (uint16 decodedX, bool decodedBool, bytes6 decodedc) = abiDecode.decode(
            encodedData
        );
        assertEq(x, decodedX);
        assertEq(hoge, decodedBool);
        assertEq(c, decodedc);
    }
}
