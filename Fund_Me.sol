// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract fundMe {

    uint256 public minimumUsd = 5;

    function fund() public payable {
        //Allow users to send money
        //set a min value of $5 sent
        require(msg.value >= minimumUsd, "please send a minimum ether value");
    }
    //only the user can withdraw
    //function withdraw() public {}
    //set the minimum value to fund
}