// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/Level5Average.sol"; // このパスは実際のファイル構成に応じて調整してください。

contract Level5AverageTest is Test {
    Level5Average public level5Average;

    function setUp() public {
        level5Average = new Level5Average();
    }

    function testSolutionWithPositiveNumbers() public {
        assertEq(level5Average.solution(10, 12), 11);
    }

    function testSolutionWithNegativeNumbers() public {
        assertEq(level5Average.solution(-10, -12), -11);
    }

    function testSolutionWithMixedSignNumbers() public {
        assertEq(level5Average.solution(-10, 10), 0);
    }

    function testSolutionWithOddSum() public {
        assertEq(level5Average.solution(1, 2), 2); // 1.5を切り上げて2
    }

    function testSolutionWithEvenSum() public {
        assertEq(level5Average.solution(2, 2), 2);
    }

    // オーバーフローおよびアンダーフローチェックはスキップされます
    // それらを含める場合は、以下のテストを有効化してください
    // function testSolutionWithOverflow() public {
    //     // このテストは、関数がオーバーフローを適切に処理することを確認するためのものです
    //     // 有効なオーバーフローチェックがない場合、このテストは実行しないでください
    //     level5Average.solution(type(int256).max, type(int256).max);
    // }

    // function testSolutionWithUnderflow() public {
    //     // このテストは、関数がアンダーフローを適切に処理することを確認するためのものです
    //     // 有効なアンダーフローチェックがない場合、このテストは実行しないでください
    //     level5Average.solution(type(int256).min, type(int256).min);
    // }
}
