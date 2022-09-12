// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.13;

import "../../interfaces/IAvaraElegibility.sol";
import "../../libraries/DataTypes.sol";


contract AvaraStorage is IAvaraElegibility {

  mapping(uint256 => mapping(address => bool)) hasVotedOnProposal;
  function isElegible(address _address) external view returns (bool) {
    return true;
  }
  function hasVoted(address _address, uint256 _proposalId) external view returns(bool) {
    return hasVotedOnProposal[_proposalId][_address];
  }
  function setVoted(address _address, uint256 _proposalId) external { //Only AvaraProtocol
    hasVotedOnProposal[_proposalId][_address] = true;
  }
}
