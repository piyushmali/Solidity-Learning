// Problem Statement
// Write a contract 'Student' which implements a function named enroll.
// enroll() takes student roll number (uint)and student name (string) as parameters and store them in a one to one mapping. Also emit en event on success with student roll number.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract Student {
    mapping(uint => string) public students; // rollnumber => name

    event Enrolled(uint rollnumber);

    function enroll(uint rollnumber, string memory name) public {
        students[rollnumber] = name;
        emit Enrolled(rollnumber);
    }
}
