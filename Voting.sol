pragma solidity ^0.8.7;

contract Voting {

    address payable owner; 
    
    constructor() {
        owner = payable(msg.sender); 

    mapping (address => uint) public voteCount;
    
     function voterBalance() public view returns(uint) {
        return voter.balance;
    }

    function accept() public payable {
      
        require(msg.value == 1 ether, string.concat("please send 1 ether, not ", Strings.toString(msg.value)));

    }

   function vote() public payable {

        require(voteCount[msg.sender] < 1, string.concat("You are  allowed to vote only once!"));

        accept();

        voteCount[msg.sender]++;
    }

}
