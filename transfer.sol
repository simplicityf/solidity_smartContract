// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.21;

contract Transfer {
    address public payer;
    address public payee;
    uint256 public amount;

    event PaymentMethod(address indexed _payer, address indexed _payee, uint256 _amount);

    constructor (address _payer, address _payee, uint256 _amount) {
        payer = _payer;
        payee = _payee;
        amount = _amount;
    }

    modifier onlyOwner() {
        
        require(msg.sender == payer, "Only owner can call this function");
        _;
    }

    function makePayment() public payable {
        require(msg.sender == payer, "Only payer can make pyment");
        require(msg.value == amount, "Incorrect payment amount");
        payable(payee).transfer(msg.value);
        emit PaymentMethod(payer, payee, amount);
    }
}