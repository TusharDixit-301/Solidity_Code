// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract loops{

    function forloops(uint _range)public pure returns(uint){
        uint counter=0;
        for(uint i = 0;i<_range;i+=1){
            counter+=i;
        }
        return counter;
    }
    function whileloops(uint _range)public pure returns(uint){
        uint counter=0;
        uint j=0;
        while(j<_range){
            counter+=j;
            j+=1;
        }
        return counter;
    }
}