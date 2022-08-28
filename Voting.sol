pragma solidity ^0.8.7;

contract Voting {

    address payable owner; 
    
    constructor() {
        owner = payable(msg.sender); 

    mapping (address => uint) public voteCount;

    function accept() public payable {
      
        require(msg.value == 1 ether, string.concat("please send 1 ether, not ", Strings.toString(msg.value)));

    }

      function castVote() public payable 
      
        require(voteCount[voter] < 1, "You can only cast your vote once!");
        
        voteCount[voter]++;
        
        voter.transfer(1 ether);
    }

}
