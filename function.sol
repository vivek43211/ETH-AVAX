// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// Functionality or requiements
// Contract successfully uses require()
// Contract successfully uses assert()
// Contract successfully uses revert() statements


contract Contract {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint256 _value) public {
        require(msg.sender == owner, "Only the owner can set the value");
        require(_value > 0, "Value must be greater than zero");
        
        value = _value;

        assert(value == _value); // This should always be true
    }

    function resetValue() public {
        require(msg.sender == owner, "Only the owner can reset the value");

        value = 0;

        assert(value == 0); // This should always be true
    }

    function revertExample() public pure {
        revert("This is a revert");
    }
}
