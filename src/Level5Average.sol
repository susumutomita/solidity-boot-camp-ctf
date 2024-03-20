// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// interface Isolution5 {
//     function solution(int256 a, int256 b) external pure returns (int256);
// }

contract Level5Average {
    // Give an overflow-free method for computing the average, rounding up, of 2 signed integers, (a + b) / 2
    // Your function will take 2 values (a,b) and return the average of these values
    // Keep in mind that you will be rounding the average up (ceil) NOT rounding down (floor)
    // Floor -> rounding towards zero
    // Ceil -> rounding away from zero
    function solution(int256 a, int256 b) external pure returns (int256) {
        unchecked {
            int256 sum = a + b;
            // 同符号でのオーバーフローをチェック
            // if ((a ^ b) >= 0) {
            //     if ((sum ^ a) < 0) {
            //         // オーバーフロー発生
            //         revert("Overflow");
            //     }
            // }

            // 切り上げるためには、合計が奇数の場合は1を足す
            bool needCeil = (sum % 2 != 0);
            // needCeilの結果に基づいて1または0をint256型にキャスト
            return (sum / 2) + (needCeil ? int256(1) : int256(0));
        }
    }
}
