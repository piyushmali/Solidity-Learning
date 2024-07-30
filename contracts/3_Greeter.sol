// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract Greeter {

    string private _greeting;

    function greet(string memory message) public {
        _greeting = message;
    }

    function getGreeting() public view returns (string memory){
        return _greeting;
    }
}
