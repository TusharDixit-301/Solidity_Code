// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    uint public a = 50;
    constructor(){
        a = 100;
    }
    function display()public {
        a=50;
    }
}
contract B is A{
    uint public b = 70;
    constructor(){
        a=500;
        b=400;
    }
    function display2()public{
        b=20;
    }
}
contract C is A,B{

}