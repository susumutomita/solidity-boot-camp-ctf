// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import "../src/Level7CodeSize.sol";

contract Level7CodeSizeScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        new Level7CodeSize();

        vm.stopBroadcast();
    }
}
