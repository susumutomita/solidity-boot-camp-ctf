// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/Level6VerifyingSignatures.sol"; // このパスは実際のファイル構成に応じて調整してください。

contract Level6VerifyingSignaturesTest is Test {
    Level6VerifyingSignatures public level6VerifyingSignatures;

    function setUp() public {
        level6VerifyingSignatures = new Level6VerifyingSignatures();
    }
}
