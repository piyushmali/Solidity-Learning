# FundMe Smart Contract

## Overview

The **FundMe** smart contract is a decentralized funding platform built on Ethereum. It allows users to contribute ETH and withdraw the funds under specific conditions, utilizing Chainlink for real-time ETH/USD price conversions.

## Features

- **Funding**: Users can fund the contract with ETH.
- **Minimum Contribution**: Ensures a minimum contribution amount (denominated in USD).
- **Owner-Only Withdrawals**: Only the contract owner can withdraw the funds.
- **Price Conversion**: Uses Chainlink price feeds to convert ETH to USD.

## Contract Details

### FundMe.sol

- **Mappings and Arrays**: Tracks contributions from different addresses and maintains a list of funders.
- **Owner**: The contract deployer is set as the owner and has exclusive rights to withdraw funds.
- **Funding Function**: Accepts ETH contributions and ensures they meet the minimum USD threshold.
- **Withdrawal Function**: Allows the owner to withdraw all funds and reset the funders' list.
- **Fallback and Receive Functions**: Handle plain ETH transfers to the contract.

### PriceConverter.sol

- **Price Feed Integration**: Fetches the latest ETH/USD price using Chainlink.
- **Conversion Function**: Converts ETH amounts to their equivalent USD value.

## Usage

### Funding the Contract

Users can fund the contract by sending ETH directly to it. The contract ensures the contribution meets the minimum USD value.

### Withdrawing Funds

Only the owner can withdraw the funds. The `withdraw` function transfers the contract's balance to the owner and resets all contributions.

### Price Conversion

The contract uses the `PriceConverter` library to fetch the latest ETH/USD price and convert ETH contributions to USD.

## Requirements

- **Solidity Version**: ^0.8.18
- **Chainlink**: For price feeds, the contract uses the Chainlink AggregatorV3Interface.

## Deployment

1. Deploy the `PriceConverter` library.
2. Deploy the `FundMe` contract, linking it to the `PriceConverter` library.
3. Ensure the Chainlink price feed address is correctly set in the `PriceConverter` library.

## Security

- **Only Owner Withdrawals**: Withdrawals can only be made by the contract owner to prevent unauthorized access to funds.
- **Minimum Contribution Check**: Ensures contributions meet the minimum required amount, preventing spam and insignificant contributions.

## License

This project is licensed under the MIT License.
