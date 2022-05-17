// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*Write a simple room management smart contract.
Features of the smart contract:- 
A payable function with which a person can book the room 
Check whether the paid amount is equal to the amount required to book the room if less gives an error, 
if more return the excess amount.
One should be able to view if the room is booked, who has booked the room, when the room was booked.
The contract should emit an event whenever the room is booked.*/

contract Room_management{
  mapping(uint =>address) customerDetails;
  

  event Booked(address _from, uint  _roomNo);

  function toBookRoom(uint _roomNo) payable public{
    require(customerDetails[_roomNo] != address(0),"Already Booked");
    require(msg.value >= 2 ether , "Insufficent Funds");
    uint excess = msg.value - 2*10**18;
    payable(msg.sender).transfer(excess);
    
    customerDetails[_roomNo] =  msg.sender;
    emit Booked(msg.sender , _roomNo);
  }

  function checkStatus(uint _roomNo )public view returns(string memory){
    if(customerDetails[_roomNo] != address(0)){
      return "Booked";
    }
    else{
      return "Not Booked";
    }
  }
}
contract Room_management2{
    struct roomDetails{
      address user;
      bool isBooked;
      uint times;
    }
    mapping(uint => roomDetails) customerDetails;
      event Booked(address _from, uint  _roomNo , uint _time);

    function toBookRoom(uint _roomNo) payable public{
      require(!customerDetails[_roomNo].isBooked,"Already Booked");
      require(msg.value >= 2 ether , "Insufficent Funds");
      uint excess = msg.value - 2*10**18;
      payable(msg.sender).transfer(excess);
      
      customerDetails[_roomNo].user = msg.sender;
      customerDetails[_roomNo].isBooked = true;
      customerDetails[_roomNo].times= block.timestamp;
      emit Booked(msg.sender , _roomNo , block.timestamp);
    }
    function checkStatus(uint _roomNo )public view returns(bool){
      return customerDetails[_roomNo].isBooked;
    }
    function checkuser(uint _roomNo )public view returns(address){
      return customerDetails[_roomNo].user;
    }
    function checkOut(uint _roomNo) public {
      require(
        msg.sender == customerDetails[_roomNo].user,
        "Not That User"
      );
      delete customerDetails[_roomNo];
    }
    }