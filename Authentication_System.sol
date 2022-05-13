//Create a contract for user authentication system, where anyone can signup by creating username and password. Later, users can login using the same and change their password.
//Users have to pay a minimum amount of ether to sign up, which is decided by the owner.
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Authentication{
    struct User{
        string username;
        string password;
    }
    User public user1;
    function signup(string memory _username, string memory _password) public payable{
        require(msg.value == 1 ether , "Insufficent Funds recieved");
            user1.username = _username;
            user1.password = _password;   
    }
    function change_password(string memory _current_password, string memory _new_password) public{
        require(keccak256(bytes(_current_password)) == keccak256(bytes(user1.password)) , "User Not Found");
        user1.password = _new_password;

    }
}