// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import "../src/Level3UnpackData.sol";

contract Level3UnpackDataScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        new Level3UnpackData();

        vm.stopBroadcast();
    }
}
