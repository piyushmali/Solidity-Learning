// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract ThreeandSeven {
    function check(int num) public  pure returns (bool){
        if ((num % 3 == 0 || num % 7 == 0) && num > 10)
            return true;
        return false; 
    }
}