//SPDX-License-Identifier: GPL-30

pragma solidity ^0.8.13;

contract Counter{
    uint256 public counter;

    event CounterAdd(uint256 _counter);

    constructor() {
        counter = 0;
    }

    function incremenntCounter() public {
        counter ++;
        emit CounterAdd(counter);
    }
}