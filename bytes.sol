// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Bytes{
    bytes5 public temp;
    bytes7 public temp1;

    function setval() public{
        temp ="abcde";
        temp1 = "123ab";
    }
    function getdigit()public view returns(bytes1){
        return temp[3];
    }
    uint public len = temp.length;
}