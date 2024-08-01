// Problem Statement
// Extend std-1/1_Calculator/Calculator.sol with UINT type by performing below checks in its methods:
// Value Overflow
// Value Underflow
// Invalid Operation
// Use require or assert.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract Calculator {
    function add(uint a, uint b) public pure returns (uint) {
        uint c = a + b;
        require(c >= a, "variable overflow");
        return c;
    }

    function sub(uint a, uint b) public pure returns (uint) {
        require(b <= a, "variable underflow");
        uint c = a - b;
        return c;
    }

    function mul(uint a, uint b) public pure returns (uint) {
        uint c = a * b;
        require(c / a == b, "variable overflow");
        return c;
    }

    function div(uint a, uint b) public pure returns (uint) {
        require(b > 0, "invalid operation");
        uint c = a / b;
        return c;
    }
}
