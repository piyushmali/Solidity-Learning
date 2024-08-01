// Problem Statement
// Write a contract 'Time' which implements a function named getTime.
// getTime() accepts a Unix timestamp (number of seconds since 1970-01-01 00:00:00 GMT). Method will check if this timestamp exists after the current time. If yes, it will return a timestamp after 1 hour, 20 minutes and 30 seconds from passed time else return 0.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract Time {
    function getTime(uint time) public view returns (uint) {
        if (time > block.timestamp)
            return time + 1 hours + 20 minutes + 30 seconds;
        else return 0;
    }
}
