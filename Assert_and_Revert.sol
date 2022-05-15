// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Revert{
    uint public age = 50;
    address public user = msg.sender;

    function checkRevert(uint _x) public {
        age+=5;
        if(_x<2){
            revert("Insufficent");
        }
    }
    error throwError(string _msg,address _user);
    function chceckowner() public view{
        if(msg.sender != user){
            revert throwError("Not Authroized" , msg.sender);
        }
    }

}
contract Assert{
    address public user = msg.sender;
    function ownership()public view{
        assert(user == 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }
}