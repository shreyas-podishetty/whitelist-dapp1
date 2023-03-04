// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract whitelist {
    // max num of addresses which can whitelisted..
    uint8 public maxWhitelistedAdresses;

    // keeping track of no of addresses whitelisted till now..
    uint8 public numAddressesWhitelisted;


    constructor(uint8 _maxWhitelistAdresses) {
        maxWhitelistedAdresses=_maxWhitelistAdresses;
    }

    mapping (address => bool) public whitelistedAdresses;// edi store chesedi


    function addAddressToWhitelist() public {
        // vache vadu shouldn't exist
        require(!whitelistedAdresses[msg.sender],"sender already unadu whitelist lo..");
        // shouln't reach max cap
        require(numAddressesWhitelisted < maxWhitelistedAdresses,"reached the max capactiy of whitelist pora");
        // adding to hashmap
        whitelistedAdresses[msg.sender]=true;
        numAddressesWhitelisted += 1;
    }
}