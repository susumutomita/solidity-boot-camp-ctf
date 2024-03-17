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
        // テストデータの準備
        uint256 x = 42;
        address addr = address(0x123);
        uint256[] memory arr = new uint256[](2);
        arr[0] = 1;
        arr[1] = 2;
        AbiDecode.MyStruct memory myStruct = AbiDecode.MyStruct({
            name: "test",
            nums: [uint256(3), 4]
        });

        // データのエンコード
        bytes memory encodedData = abiDecode.encode(x, addr, arr, myStruct);

        // エンコードされたデータをデコードして元のデータを取得
        (uint256 decodedX, address decodedAddr, uint256[] memory decodedArr, AbiDecode.MyStruct memory decodedMyStruct) = abiDecode.decode(encodedData);

        // 復元されたデータが期待値と一致するか検証
        assertEq(x, decodedX);
        assertEq(addr, decodedAddr);
        for (uint256 i = 0; i < arr.length; i++) {
            assertEq(arr[i], decodedArr[i]);
        }
        assertEq(myStruct.name, decodedMyStruct.name);
        for (uint256 i = 0; i < myStruct.nums.length; i++) {
            assertEq(myStruct.nums[i], decodedMyStruct.nums[i]);
        }
    }
}
