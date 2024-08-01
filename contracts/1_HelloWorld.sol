// Problem Statement
// Write a contract to print a string "Hello World!". Printing should not involve any gas.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract HelloWorld {
    function print() public pure returns (string memory) {
        return "Hello World!";
    }
}
