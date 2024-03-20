// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import "../src/Level2ArraySort.sol";

contract Level2ArraySortScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        new Level2ArraySort();

        vm.stopBroadcast();
    }
}
