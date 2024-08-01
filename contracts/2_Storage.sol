// Problem Statement
// Write a contract to set a hard coded value (e.g: suppose 5) to an integer variable. User can check its value anytime without consuming gas.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract Storage {
    // uint and int are aliases for uint256 and int256, respectively.
    uint256 n;

    function store() public {
        n = 5;
    }

    function get() public view returns (uint256) {
        return n;
    }
}
