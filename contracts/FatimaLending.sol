//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FatimaLending is Ownable {
    IERC20 internal len_token;
    address internal aave_address;

    constructor(address _aave) {
        aave_address = _aave;
        console.log("Fatima Lending Platform");
    }

    function setting(address _address) public onlyOwner {
        aave_address = _address;
    }

    function deposit(address _address, uint256 _amount) public {
        len_token = IERC20(_address);
        len_token.transferFrom(msg.sender, aave_address, _amount);
    }

    function withdraw(address _address, uint256 _amount) public {
        len_token = IERC20(_address);
        len_token.transferFrom(aave_address, msg.sender,_amount);
    }
}
