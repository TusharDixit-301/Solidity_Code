// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    
    function first() public pure returns(string memory){
        return "I am in first fun" ;
    }
    function second() public pure virtual returns(string memory){
        return "I am in 2 fun";
    }
}
contract B is A{
    function second() public pure override returns(string memory){
        return "I am in 2 fun but in B ";
    }
}