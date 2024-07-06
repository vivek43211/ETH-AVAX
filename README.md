# ETH-AVAX
ETH + AVAX PROOF: Intermediate EVM Course

###Function: setValue
"The setValue function allows the owner to set the value of the value variable."
"First, it uses require(msg.sender == owner, "Only the owner can set the value") to ensure that only the owner can call this function. If this condition is not met, the transaction is reverted, and the message 'Only the owner can set the value' is returned."
"Next, it uses require(_value > 0, "Value must be greater than zero") to ensure the new value is greater than zero. If this condition is not met, the transaction is reverted, and the message 'Value must be greater than zero' is returned."
"The value is then set to the new value, and assert(value == _value) is used to check that the assignment was successful. If the assertion fails, it indicates a critical error in the contract logic."

```solidity
function setValue(uint256 _value) public {
        require(msg.sender == owner, "Only the owner can set the value");
        require(_value > 0, "Value must be greater than zero");

        value = _value;

        assert(value == _value); // This should always be true
    }
```

###Function: resetValue
"The resetValue function allows the owner to reset the value to zero."
"It uses require(msg.sender == owner, "Only the owner can reset the value") to ensure only the owner can call this function."
"The value is set to zero, and assert(value == 0) checks that the assignment was successful."

```solidity
function resetValue() public {
        require(msg.sender == owner, "Only the owner can reset the value");

        value = 0;

        assert(value == 0); // This should always be true
    }
```

###Function: revertExample

"The revertExample function demonstrates the use of the revert() statement. This function will always revert the transaction with the message 'This is a revert example'. This is useful for showing how revert() can be used to terminate a function and provide a specific error message."

```solidity
function revertExample() public pure {
        revert("This is a revert ");
    }
```
