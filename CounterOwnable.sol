// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Zero address");
        owner = newOwner;
    }
}

contract Counter is Ownable {
    int256 private count;

    constructor(int256 initialValue) {
        count = initialValue;
    }

    function increment() public onlyOwner {
        count += 1;
    }

    function decrement() public onlyOwner {
        count -= 1;
    }

    function getCount() public view returns (int256) {
        return count;
    }
}