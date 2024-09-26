
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

    function subtraction(uint256 n) public {
        value -= n;
    }

    function multiplication(uint256 n) public {
        value *= n;
    }

    function division(uint256 n) public {
        value /= n;
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}

