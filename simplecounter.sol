pragma solidity ^0.4.24;

contract SimpleCounter{
    int256 counter;
    address owner;
    
    constructor() public {
        counter = 0;
        owner = msg.sender ;
    }
    
    function getCounter() view public returns(int) {
        return counter;
    }
    
    function increament() public {
        counter += 1;
    }
    
    function decreament() public {
        counter -= 1;
    }
    
    function reset() public {
        require(msg.sender == owner);
        counter = 0;
    }
}