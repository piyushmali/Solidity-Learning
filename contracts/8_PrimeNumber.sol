// Problem Statement
// Write a contract 'PrimeNumber' which implements a function named ifPrime.
// ifPrime() accepts a number and return true if number is a prime number else false. This function should not consume any gas.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract primeNum {
    function ifPrime(int num) public pure returns (bool) {
        if (num == 1) return false;
        for (int i = 2; i < num; i++) {
            if (num % i == 0) return false;
        }
        return true;
    }
}
