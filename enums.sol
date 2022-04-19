// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Enums{
    enum Status{
        Pending,
        Shipped,
        Delivered,
        Rejected,
        Cancel
    }
    Status public status;

    function setStatus(Status _status)public{
        status = _status;
    }
    function resetStatus() public{
        delete status;
    }
    function setmanualStatus() public{
        status = Status.Pending;
    }
}