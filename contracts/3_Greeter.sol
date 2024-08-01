// Problem Statement
// Write a contract 'Greeter' which should set a string with value passed by user. User can check the string value anytime without consuming any gas. Also, this string should not be accessible to any other contract.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract Greeter {
    string private _greeting;

    function greet(string memory message) public {
        _greeting = message;
    }

    function getGreeting() public view returns (string memory) {
        return _greeting;
    }
}
