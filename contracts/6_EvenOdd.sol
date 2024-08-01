// Problem Statement
// Write a contract 'EvenOdd' to which implements a function named check.
// check() accepts a number and return whether the passed number is odd or even without consuming gas. (Ignore various checks on passed parameters for now)

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract EvenOdd {
    function check(int num) public pure returns (string memory) {
        if (num % 2 == 0) return "EVEN";
        return "ODD";
    }
}
