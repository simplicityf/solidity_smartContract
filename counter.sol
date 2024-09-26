// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Counter{
    uint256 public counter;

    event IncreaseCounter(uint256 _counter);
    constructor(){
        counter = 0;
    }

    function increaseCounter() public {
        counter++;
        emit IncreaseCounter(counter);
    }
}