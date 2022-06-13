// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "./IMetoExchange.sol";

contract MetoExchange {

    mapping(address => mapping(address => uint256)) public assets;

    function decimals() public pure returns(uint256) {
        return 10 ** 5;
    }

    function pair(address from, address to) public view returns(uint256) {
        return assets[from][to];
    }

    function setPair(address from, address to, uint256 value) public {
        assets[from][to] = value;
    }
}