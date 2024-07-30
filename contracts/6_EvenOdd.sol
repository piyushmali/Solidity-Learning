// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract EvenOdd {
    function check(int num) public pure returns (string memory){
        if(num % 2 == 0)
            return "EVEN";
        return "ODD";
    }    
}