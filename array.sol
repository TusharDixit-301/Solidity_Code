// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract array{
    uint[5] arr = [10,20,30,40,50];

    //acces the element
    function getval(uint _x) public view returns(uint){
        return arr[_x];
    }

    //modify the element
    function modval(uint _x,uint _i)public returns(uint[5] memory){
        arr[_i]= _x;
        return arr;
    }

    //delete the val at i
    function delval( uint _i)public returns(uint[5] memory){
        delete arr[_i];
        return arr;
    }
    // print array
    function printarr()public view returns(uint[5] memory){
        return arr;
    }
}