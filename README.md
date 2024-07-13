# LEONET Token Contract

## Description
The LEONET Token Contract is a smart contract written in Solidity that allows for the creation (minting) and destruction (burning) of LEONET (LEO) tokens.

### Features

* Token Name: LEONET
* Token Abbreviation: LEO
* Minting: Users can create new tokens to add to the total supply.
* Burning: Users can destroy their tokens to reduce the total supply.

### Functions
* mint(address _address, uint _value)
  Allows the minting of LEO tokens to a specified address. This increases the total supply of LEO tokens.

* burn(address _address, uint _value)
  Allows the burning of LEO tokens from a specified address. This decreases the total supply of LEO tokens, provided the address has enough     tokens to burn.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., LEONET.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Token {
    string public token_name = "LEONET";
    string public token_abbrv = "LEO";
    uint public total_supply = 0;
    mapping(address => uint) public balances;

    function mint(address _address, uint _value) public {
        total_supply += _value;
        balances[_address] += _value; 
    }

    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value) {
            total_supply -= _value;
            balances[_address] -= _value; 
        }
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile LEONET.sol" button.
Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Token" contract from the dropdown menu, and then click on the "Deploy" button.
Once the contract is deployed, you can interact with it by calling the mint and burn functions. Click on the deployed contract in the left-hand sidebar, and then use the provided interface to call these functions with the required parameters.
