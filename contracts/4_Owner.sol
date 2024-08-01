// Problem Statement
// Write a contract 'Owner' which should set an address to the owner by passing it as a parameter and also emit an event on success. It should have a function which can tell the user about the current owner address.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract Owner {
    address private _owner;
    event OwnerSet(address owner);

    function setOwner(address ownerAddress) public {
        _owner = ownerAddress;
        emit OwnerSet(_owner);
    }

    function getCurrentOwner() public view returns (address) {
        return _owner;
    }
}
