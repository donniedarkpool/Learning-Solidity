// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract EtherWallet {
    address payable public owner; // allows the owner address the ability to recieve ether

    constructor() {
        owner = payable(msg.sender); // makes the address that deployed the contract the owner address
    }

    receive() external payable {} // function to receive Ether. msg.data must be empty

    function withdrawEther(uint _amount) external {
        require(msg.sender == owner, "You're not the guy, pal"); // only the owner's address call this function
        payable(msg.sender).transfer(_amount * 10**18); // withdraws an amount in units of ether
    }
    
    function withdraw(uint _amount) external {
        require(msg.sender == owner, "You're not the guy, pal"); // only the owner's address call this function
        payable(msg.sender).transfer(_amount); // withdraws an amount in units of wei
    }

    function withdrawBalance() external {
        require(msg.sender == owner, "You're not the guy, pal"); // only the owner's address call this function
        payable(msg.sender).transfer(address(this).balance); // withdraws the remaining balance 
    }

    function getBalance() external view returns (uint) {
        return address(this).balance; // shows the balance in wei
    }

    function etherBalance() external view returns (uint) {
        return address(this).balance / (10**18); // shows the balance in ether
    }
}
