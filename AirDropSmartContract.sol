// SPDX-License-Identifier: MIT LICENSE

import "https://github.com/onchain123/SPERMO-TOKEN-Soure-code/spermotoken.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

pragma solidity ^0.8.4;

contract AirDropNFT is Ownable  {
    
    uint256 public airDrop = 0.01481 ether;
    SPERMOTOKEN rewards;

    constructor(SPERMOTOKEN _rewards) {
        rewards = _rewards;
    }

    function issueAirDropERC20(address[] calldata holder) public onlyOwner {
        rewards.mintAirdrop(holder, airDrop);
    }

}
