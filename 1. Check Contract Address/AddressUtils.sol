// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressUtils {
    /**
     * @notice Checks if a given address is a contract
     * @param _address The address to check
     * @return A boolean indicating whether the address is a contract or not
     */
    function isContract(address _address) public view returns (bool) {
        uint32 size;

        assembly {
            // Retrieve the size of the code at the given address
            size := extcodesize(_address)
        }

        // If the size is greater than 0, it indicates the presence of code, meaning the address is a contract
        return (size > 0);
    }
}
