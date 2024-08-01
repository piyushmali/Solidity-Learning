// Problem Statement
// Write a contract 'Calculator' to which returns addition, subtraction, multiplication and division of two passed integers without consuming gas. (Ignore various checks on passed parameters for now). Use SPDX License Identifier.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract Calculator {
    function add(int a, int b) public pure returns (int) {
        return (a + b);
    }

    function sub(int a, int b) public pure returns (int) {
        return (a - b);
    }

    function mul(int a, int b) public pure returns (int) {
        return (a * b);
    }

    function div(int a, int b) public pure returns (int) {
        return (a / b);
    }
}
