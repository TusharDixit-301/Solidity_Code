// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Events{
     event message_save(address _from , address _to, string _message);
     function display_the_message(address _to,string memory _msg)public{
         emit message_save(msg.sender , _to , _msg);
     }
}