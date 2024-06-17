# EVM
# LEONET Token Contract

## Introduction
The LEONET Token Contract is a smart contract written in Solidity that allows for the creation (minting) and destruction (burning) of LEONET (LEO) tokens.

## Features
- **Token Name**: LEONET
- **Token Abbreviation**: LEO
- **Minting**: Users can create new tokens to add to the total supply.
- **Burning**: Users can destroy their tokens to reduce the total supply.

## Functions
### mint(address _address, uint _value)
Allows the minting of LEO tokens to a specified address. This increases the total supply of LEO tokens.

### burn(address _address, uint _value)
Allows the burning of LEO tokens from a specified address. This decreases the total supply of LEO tokens, provided the address has enough tokens to burn.
