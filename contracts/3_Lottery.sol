// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Lottery {
    address public owner;
    address[] public players;

    event WinnerPicked(address winner, uint amount);

    constructor() {
        owner = msg.sender;
    }

    function enter() public payable {
        require(msg.value == 0.01 ether, "Must send ETH");
        players.push(msg.sender);
    }

    function pickWinner() public {
        require(msg.sender == owner, "Not the owner");
        require(players.length > 0, "No one here.");

        uint index = uint(keccak256(abi.encodePacked(block.timestamp, players))) % players.length;
        address winner = players[index];

        emit WinnerPicked(winner, address(this).balance);
        payable(winner).transfer(address(this).balance);
        delete players;
    }

    function getPlayers() public view returns (address[] memory) {
        return players;
    }
}