// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/Level4PowersOf2.sol"; // このパスは実際のファイル構成に応じて調整してください。

contract Level4PowersOf2Test is Test {
    Level4PowersOf2 public level4PowersOf2;

    function setUp() public {
        level4PowersOf2 = new Level4PowersOf2();
    }

    function testSolutionWith0() public {
        assertEq(level4PowersOf2.solution(0), 1);
    }

    function testSolutionWith1() public {
        assertEq(level4PowersOf2.solution(1), 1);
    }

    function testSolutionWith10() public {
        assertEq(level4PowersOf2.solution(10), 8);
    }

    function testSolutionWith21() public {
        assertEq(level4PowersOf2.solution(21), 16);
    }

    function testSolutionWith2048() public {
        assertEq(level4PowersOf2.solution(2048), 2048);
    }

    function testSolutionWithLargeNumber() public {
        assertEq(level4PowersOf2.solution(9223372036854775808), 9223372036854775808);
    }

    function testSolutionWithHexNumber() public {
        assertEq(level4PowersOf2.solution(0xffffffff), 2147483648);
    }
}
