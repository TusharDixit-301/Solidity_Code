// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract variablecheck{
    uint public integer = 56; //State Variable
    string public name = "Alice";
    address public myaddress;
    bool public boolean = true;

    function changevalue(uint _x ) public{
        integer = _x;//local variable
    }
    function getvalue() public view returns(uint){
        return integer*10;
    }

}
contract GlobalVariable{ // Golbal variable
    uint public difficulty = block.difficulty;
    uint public blocknumber = block.number;
    uint public timestamp = block.timestamp;
    uint public newadd = 56;
}