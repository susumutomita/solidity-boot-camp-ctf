// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import "../src/Level4PowersOf2.sol";

contract Level4PowersOf2Script is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        new Level4PowersOf2();

        vm.stopBroadcast();
    }
}
