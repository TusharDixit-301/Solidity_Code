// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract oddeven{

    function check(uint _number) public pure returns(string memory){
        string memory answer;

        if(_number%2==0){
            answer = "Even";
        }
        else{
            answer = "Odd";
        }
        return answer;
    }
}