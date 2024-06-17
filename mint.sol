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