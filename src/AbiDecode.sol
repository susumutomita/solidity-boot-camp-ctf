// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract AbiDecode {
    function encode(
        uint16 x,
        bool hoge,
        bytes6 c
    ) external pure returns (bytes memory) {
        return abi.encode(x, hoge, c);
    }

    function decode(
        bytes calldata data
    ) external pure returns (uint16 x, bool hoge, bytes6 c) {
        (x, hoge, c) = abi.decode(data, (uint16, bool, bytes6));
    }
}
