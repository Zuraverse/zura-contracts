// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct AppStorage {

    uint256 _tokenIdCounter;
    
    uint256 Hack_Max_Supply;   // Max HACK NFT supply

    uint Whitelist_Limit; // Max free NFTs

    uint256 listPrice ;     //List price

    uint256 specialPrice;

    bool paidMintAllowed; // param to start/stop paid minting

    bool whitelistMintAllowed;  // param to start/stop whitelist minting

    bool specialMintAllowed; 

    uint mintFrom; // The id from where minting is allowed in that round

    uint mintUpto; // The id upto which minting is allowed in that round

    bytes32 merkleRoot ;  // root to be generated from a function            

    mapping(address => bool) whitelistClaimed; // True once Whitelist claimed

    mapping(address => bool) specialMintClaimed;

    mapping(uint => bool) tokenMintStatus; // True once minted
}

