// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 contract checkStringVar{
     
    string public s1 = "Tushar";
    
    function stringstor(string memory _str) public pure returns(string memory){
        
        return _str;
    }
    //we cant use string variable without memory keyword as a local varaible.
 }