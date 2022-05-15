// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract NGO_Donation_System{
    struct Donor{
    string name;
    uint age;
    uint funds;
    }
    address public chairperson;
    modifier onlychairperson_and_funds {
      require(msg.value == 1 ether , "Not Sufficent Funds");
      require(msg.sender == chairperson , "Not Authorized");
      _;  
   }
    constructor(){
        chairperson = msg.sender;
    }
    
    mapping(address => Donor) public donor_details;
    function send_funds(string memory _name, uint _age, uint _funds) public{
        donor_details[msg.sender]= Donor(_name,_age,donor_details[msg.sender].funds+_funds);
    }

    function delete_User_Info(address _User_address)public onlychairperson_and_funds payable{
        //require(msg.sender == chairperson , "Not Authorized");
        delete donor_details[_User_address];
    }
}