// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


// inheritence
contract AbhiToken is ERC20 {
    // contructor will intialize a smart contract. ===. parametrised custructore

    // ERC20 - child custrocter by using property of parent constructor -- ERC20 is a file
    constructor(uint256 initialSupply) ERC20("The Abhishek Token", "TBT") {

        // mint is used to create new tokens
        _mint(msg.sender, initialSupply);
    }


}

/*
1. check the toal supply 
2. check the name and token 
3. check the balance of the owner 

*/