// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Counter {
    uint public count;

    // Function to get the current count
    function get() public view returns (uint) {
        return count;
    }

    // Function to add to count
    function addCount(uint _number) public {
        count += _number;
    }

    // Function to subtract from count
    function subtractCount(uint _number) public {
        count -= _number;
    }

    // Function to reset count to zero
    function resetCount() public {
        count = 0;
    }
}
