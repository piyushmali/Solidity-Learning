# Solidity Smart Contracts

This repository contains three Solidity smart contracts: `SimpleStorage.sol`, `StorageFactory.sol`, and `AddFiveStorage.sol`. Each contract demonstrates various features of Solidity, including storage, contract creation, and inheritance.

## Contracts Overview

### SimpleStorage.sol

This contract provides basic storage functionality. It allows storing and retrieving a favorite number, and managing a list of people with their favorite numbers.

#### Functions:
- `store(uint256 _favoriteNumber)`: Stores a given number.
- `retrieve() public view returns (uint256)`: Retrieves the stored number.
- `addPerson(string memory _name, uint256 _favoriteNumber)`: Adds a person with a favorite number to the list.

### StorageFactory.sol

This contract allows creating instances of the `SimpleStorage` contract. It manages an array of `SimpleStorage` contract instances and provides functions to interact with them.

#### Functions:
- `createSimpleStorageContract()`: Creates a new `SimpleStorage` contract instance and adds it to the list.
- `sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)`: Stores a number in a specific `SimpleStorage` contract instance.
- `sfGet(uint256 _simpleStorageIndex) public view returns (uint256)`: Retrieves a number from a specific `SimpleStorage` contract instance.

### AddFiveStorage.sol

This contract inherits from `SimpleStorage` and overrides the `store` function to add 5 to the given number before storing it.

#### Functions:
- `store(uint256 _favoriteNumber)`: Stores a given number plus 5.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

