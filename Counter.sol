pragma solidity ^0.6.0;
contract Counter{
    uint count;
    constructor() public{
        count = 0;
    }
    function updateCount() public{
        count = count+1;
    }
    function displayCount() public view returns(uint){
        return count;
    }


}