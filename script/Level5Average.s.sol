// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import "../src/Level5Average.sol";

contract Level5AverageScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        new Level5Average();

        vm.stopBroadcast();
    }
}
