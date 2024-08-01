// Problem Statement
// Write a contract named "AttendanceRegister" which will be deployed by teacher. There will be a function add which will take student name, class & joiningDate and will store it where:
// name: String to store student name
// class: Number from 1 to 12
// joiningDate: Date timestamp of student joining day Each student will be stored corresponding to a unique serial number called roll number.
// Only teacher can add the data of student. An event will be emitted on success.
// Use struct, modifier & mapping wherever applicable.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract AttendanceRegister {
    struct Student {
        string name;
        uint class;
        uint joiningDate;
    }

    address public teacher;
    uint rollNumber;

    event Added(string name, uint class, uint time);

    mapping(uint => Student) public registered;

    modifier isTeacher() {
        require(msg.sender == teacher, "Only teacher can add student");
        _;
    }

    constructor() {
        teacher = msg.sender;
    }

    function add(
        string memory name,
        uint class,
        uint joiningDate
    ) public isTeacher {
        require(class > 0 && class <= 12, "Invalid class");
        Student memory s = Student(name, class, joiningDate);
        rollNumber++;
        registered[rollNumber] = s;
        emit Added(name, class, block.timestamp);
    }
}
