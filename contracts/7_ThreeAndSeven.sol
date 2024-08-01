// Problem Statement
// Write a contract 'ThreeAndSeven' which implements a function named check.
// check() accepts a number and return true if number is fully divided by 3 or 7 and greater than 10 else false. This function should not consume any gas.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract ThreeandSeven {
    function check(int num) public pure returns (bool) {
        if ((num % 3 == 0 || num % 7 == 0) && num > 10) return true;
        return false;
    }
}
