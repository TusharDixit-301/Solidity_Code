// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CheckConstructor{
    string public name;
    uint public age;
    address public address1;
//This constructor requires parameter without parameter contract will
//not be deployed.
    constructor(string memory _name,uint _age,address _address1){
        name = _name;
        age = _age;
        address1 = _address1;
    }
}