// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

/*
  interface Isolution2 {
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
  }
*/

contract Level2ArraySort {
    function solution(
        uint256[10] calldata unsortedArray
    ) external pure returns (uint256[10] memory) {
        uint256[10] memory arr = unsortedArray;
        quickSort(arr, 0, int(arr.length - 1));
        return arr;
    }

    function quickSort(
        uint256[10] memory arr,
        int left,
        int right
    ) internal pure {
        int i = left;
        int j = right;
        if (i >= j) return;
        uint pivot = arr[uint(left + (right - left) / 2)];
        while (i <= j) {
            while (arr[uint(i)] < pivot) i++;
            while (pivot < arr[uint(j)]) j--;
            if (i <= j) {
                (arr[uint(i)], arr[uint(j)]) = (arr[uint(j)], arr[uint(i)]);
                i++;
                j--;
            }
        }
        if (left < j) quickSort(arr, left, j);
        if (i < right) quickSort(arr, i, right);
    }
}
