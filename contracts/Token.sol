// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract UnitedPursuitToken is ERC20Capped, Ownable {
    constructor(uint256 totalSupply) ERC20("United Pursuit", "UP") ERC20Capped(totalSupply) {
    }

    function issueToken(address receiver, uint256 amount) public onlyOwner {
      _mint(receiver, amount);
    }
}
