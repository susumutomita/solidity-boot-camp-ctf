// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import "../src/Level1MatrixAddition.sol";

contract Level1MatrixAdditionScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        new Level1MatrixAddition();

        vm.stopBroadcast();
    }
}
