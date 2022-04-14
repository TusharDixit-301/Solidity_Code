// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract dynamicArray{
    uint[] array;
    constructor(){
        array=[10,20,30,40,50];
    }
    function dynamicArraychck()public {
        //push new element
        array.push(5);

        //pop new element
        array.pop();


    }
    function viewarr()public view returns(uint[] memory){
        return array;
    }
}