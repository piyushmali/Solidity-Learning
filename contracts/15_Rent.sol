// Problem Statement
// Write a contract named "Rent" which will be deployed by Landlord and all ethers transferred on this contract address will be automatically transferred to landlord's address, So that tenant can use contract address to pay rent. At the time of contract deployment, landlord will provide the information of tenant which will be public. Information of tenant will be name, age & occupation.
// Use receive() function wherever required.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract Rent {
    address payable public landlord;
    string public tenantName;
    uint public tenantAge;
    string public tenantOccupation;

    constructor(string memory name, uint age, string memory occupation) {
        tenantName = name;
        tenantAge = age;
        tenantOccupation = occupation;
        landlord = payable(msg.sender);
    }

    receive() external payable {
        landlord.transfer(msg.value);
    }
}
