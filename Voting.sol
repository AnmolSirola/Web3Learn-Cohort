pragma solidity ^0.8.9;

contract Voting {

    address payable owner; 
    
    constructor() {
        owner = payable(msg.sender); 

    mapping (address => uint) public voteCount;

    function accept() public payable {
        
        // Error out if anything other than 1 ether is sent
        require(msg.value == 1 ether, string.concat("please send 1 ether, not ", Strings.toString(msg.value)));

    }

    function vote() public payable {

         //each account votes only once
        require(voteCount[msg.sender] < 1, string.concat("You are  allowed to vote only once!"));

        accept();

        voteCount[msg.sender]++;
    }
}
