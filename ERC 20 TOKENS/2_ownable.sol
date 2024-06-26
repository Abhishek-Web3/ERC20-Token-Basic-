// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

import "@openzeppelin/contracts/access/Ownable.sol";

contract MyContract is Ownable {
    constructor() Ownable(msg.sender) {
        
    }
    function normalfunction() external pure returns (string memory) {
        return "Anyone can call this function";
    }

    function specialfunction() external view onlyOwner returns (string memory) {
        return "Only Owner can call this function";
    }
}
