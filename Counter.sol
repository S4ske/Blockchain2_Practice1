// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    int256 private count;

    constructor(int256 initialValue) {
        count = initialValue;
    }

    function increment() public {
        count += 1;
    }

    function decrement() public {
        count -= 1;
    }

    function getCount() public view returns (int256) {
        return count;
    }
}