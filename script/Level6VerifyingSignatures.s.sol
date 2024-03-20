// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import "../src/Level6VerifyingSignatures.sol";

contract Level6VerifyingSignaturesScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        new Level6VerifyingSignatures();

        vm.stopBroadcast();
    }
}
