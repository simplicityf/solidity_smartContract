
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Calculate {
     uint256 public value;

    function setValue(uint256 _value) public {
        value = _value;
    }

    function addition(uint256 n) public {
        value += n;
    }

    function subtraction(uint256 _s) public {
        value -= _s;
    }

    function multiplication(uint256 _m) public {
        value *= _m;
    }

    function division(uint256 _n) public {
        value /= _n;
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}