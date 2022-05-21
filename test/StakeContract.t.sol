// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "ds-test/test.sol";
import "../StakeContract.sol"
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract StakeContractTest is DSTest {

    StakeContract public stakeContract;
    ERC20 public token;
    uint256 public constant AMOUNT= 1e18;

    function setUp() public {
        stakeContract= new StakeContract();
        token =new ERC20("My TOken", "MT")
    }

    function testStakingTokens() public {

        token.approve(address(stakeContract), AMOUNT);
        bool success=stakeContract.stake(AMOUNT, address(token));
        
        assertTrue(success);
    }

    //tokens can be sent to the stake contract
}
