# AddressUtils

AddressUtils is a Solidity contract that provides a function to check if a given address is a contract or not.

## Prerequisites

- Solidity ^0.8.0

## Usage

1. Import the `AddressUtils.sol` file in your Solidity contract:

```
import "./AddressUtils.sol";
```

2. Create an instance of the `AddressUtils` contract:

```
AddressUtils addressUtils = new AddressUtils();
```

3. Call the `isContract` function with the address you want to check:

```
bool isContract = addressUtils.isContract(addressToCheck);
```

4. The `isContract` function will return `true` if the address is associated with a contract and `false` otherwise.

## Contributing

Contributions are welcome! If you find any issues or would like to add new features, please submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
