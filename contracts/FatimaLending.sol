//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import {ILendingPool} from './ILendingPool.sol';

contract FatimaLending is Ownable {
    IERC20 internal len_token;
    ILendingPool internal len_pool;

    constructor(address _aave) {
        len_pool = ILendingPool(_aave);
        console.log("Fatima Lending Platform");
    }

    function setLendingPool(address _aave) public onlyOwner {
        len_pool = ILendingPool(_aave);
    }

    function deposit(address _address, uint256 _amount) public {

    }

    function withdraw(address _address, uint256 _amount) public {
        
    }
}