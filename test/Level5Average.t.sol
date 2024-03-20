// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/Level5Average.sol"; // このパスは実際のファイル構成に応じて調整してください。

contract Level5AverageTest is Test {
    Level5Average public level5Average;

    function setUp() public {
        level5Average = new Level5Average();
    }

    function testSolutionWithPositiveNumbers() public view {
        assertEq(level5Average.solution(10, 12), 11);
    }

    function testSolutionWithNegativeNumbers() public view {
        assertEq(level5Average.solution(-10, -12), -11);
    }

    function testSolutionWithMixedSignNumbers() public view {
        assertEq(level5Average.solution(-10, 10), 0);
    }

    function testSolutionWithOddSum() public view {
        assertEq(level5Average.solution(1, 2), 2); // 1.5を切り上げて2
    }

    function testSolutionWithEvenSum() public view {
        assertEq(level5Average.solution(2, 2), 2);
    }

    // 大きな正の数値に対するテスト
    function testSolutionWithLargePositiveNumbers() public view {
        assertEq(level5Average.solution(type(int256).max - 1, type(int256).max), type(int256).max);
    }

    // 大きな負の数値に対するテスト
    function testSolutionWithLargeNegativeNumbers() public view {
        assertEq(
            level5Average.solution(type(int256).min, type(int256).min + 1),
            -57896044618658097711785492504343953926634992332820282019728792003956564819967
        );
    }

    // 大きな数値が混在するテスト（結果が正確に中央値になることを確認）
    function testSolutionWithMixedLargeNumbers() public view {
        assertEq(level5Average.solution(type(int256).max, type(int256).min), 0);
    }

    // 極端に大きな差を持つ数値のテスト
    function testSolutionWithExtremeDifference() public view {
        // このケースでは、2つの数の平均が正確に計算され、適切に切り上げられるかをテストします。
        assertEq(level5Average.solution(type(int256).max, 0), (type(int256).max / 2) + 1);
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
