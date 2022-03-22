//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract pidoxyDoxy is ERC20 {
    uint constant _initial_supply = (10**6) * (10**18);
    constructor() ERC20("pidoxyDoxy", "pd") {
        _mint(msg.sender, _initial_supply);
    }

    function buyToken(address receiver) public payable returns (bool) {
        require(msg.value >= 0, "You cannot mint pd with zero ETH");
        uint256 amount = msg.value/10**18 * 1000;
        _mint(receiver, amount);
        return true ;
    }
}