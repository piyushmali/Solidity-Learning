// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract AllPrimeNumber {

    uint[] primes;

    function addPrime(uint limit) public {
        delete primes; //Clears all previous values stored in primes array, so we do not store duplicates
        for(uint j = 2; j < limit; j++){
            if(ifPrime(j))
                primes.push(j);
        }
    }

    function getPrime() public view returns (uint[] memory){
        return primes;
    }

    function ifPrime(uint _num) private pure returns (bool){
        for(uint i = 2; i < _num; i++){
            if(_num % i == 0)
                return false;
        }
        return true;
    }
}