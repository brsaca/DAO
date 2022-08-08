// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface IdaoContract {
    function balanceOf(address, uint256) external view returns (uint256);
}

contract MoralisDao {
    
    address public owner;
    uint256 nextProposal;
    uint256[] public validTokens;
    IdaoContract daoContract;

    constructor(){
        owner = msg.sender;
        nextProposal = 1;
        daoContract = IdaoContract(0x2953399124F0cBB46d2CbACD8A89cF0599974963);
        validTokens = [111971127743115773933156899486683070662051120133998587769265069859404540543076];

    }
}
