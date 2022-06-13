// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

interface IMetoExchange {
    function pair(address from, address to) external returns(uint256);
    function decimals() external pure returns(uint256);
}