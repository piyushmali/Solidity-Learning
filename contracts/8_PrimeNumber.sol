// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract primeNum {
    function ifPrime(int num) public pure returns (bool) {
        if (num == 1) return false;
        for(int i = 2; i < num; i++){
            if(num % i == 0)
                return false;
        }
        return true;
    }
}