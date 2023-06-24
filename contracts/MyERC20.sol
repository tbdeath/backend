// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyERC20 is ERC20 {
    constructor() ERC20("MyERC20", "ME") {}

    function distribute(address from, address[] memory to, uint256[] memory amount, uint total) public {
        for(uint8 i = 0; i < total; i++) {
            transferFrom(from, to[i], amount[i]);
        }
    }
}
