// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ICO is ERC20, Ownable {
    constructor() ERC20("The Abhishek Token", "TAT") Ownable(msg.sender){
        _mint(msg.sender, 1000000);
    }
    // creating new token 
    function mint(address account, uint256 amount) public onlyOwner returns(bool) {
        // account sjould not equal to smart contract address [address(0) or address(this)]
        require(account !=address(0) && amount != uint256(0), "ERC20: function mint invalid input");
        _mint(account, amount);
        return true;
    }
    // burning new token
    function burn(address account, uint256 amount ) public onlyOwner returns(bool){
        require(account !=address(0) && amount != uint256(0), "ERC20: function mint invalid input");
        _burn(account, amount);
        return true;
    }

    // function withdraw(uint256 amount) public onlyOwner returns(bool) {
    //     require(amount<=address(this).balance, "ICO: function withraw has invalid input ");
    //     payable(_msgSender()).transfer(amount);
    //     return true;
    // }

    function buy() public payable returns (bool) {
        require(msg.sender.balance >= msg.value && msg.value != 0 ether, "ICO : function buy invalid input");
        uint amount = msg.value*1000;
        _transfer(owner(), _msgSender(),amount );
        return true;
    }

// https://opengsn.org/
    function withdraw(uint256 amount) public onlyOwner returns (bool) {
        require(amount <= address(this).balance, "ICO : function withdraw has invailid input");
        payable (_msgSender()).transfer(amount);
        return true;

    }


}


// owner balance - 
// contract balance - 