// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
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
        revert("This is a revert example");
    }
}
