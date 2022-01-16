// SPDX-License-Identifier: MIT
// A contract that converts age in Human years to age in Dog Years

pragma solidity ^0.8.0;

contract DogYears {

    // Variables

    uint public dogYears;

    //Functions

    function myAge(uint _myAge) public returns (uint) {
        uint _earlyYears = 21;
        uint _laterYears = 4*(_myAge - 2);
        return dogYears = _earlyYears + _laterYears;
    }

}
