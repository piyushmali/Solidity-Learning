// Problem Statement
// Write a contract 'SelfWhitelist' which implements two functions named whitelist & check. It maintains a list of whitelisted addresses. (Use Array)
// whitelist() accepts an address as parameter and stores it in the whitelist. Passed address should be of the person calling the method.
// check() checks if callee (address calling the method) exists in the whitelist and returns true otherwise false, without consuming gas.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract SelfWhitelist {
    address[] public whitelisted;

    function whitelist(address addr) public {
        if (addr == msg.sender) {
            whitelisted.push(addr);
        }
    }

    function check() public view returns (bool) {
        for (uint i = 0; i < whitelisted.length; i++) {
            if (whitelisted[i] == msg.sender) return true;
        }
        return false;
    }
}
