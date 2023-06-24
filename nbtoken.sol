// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract nbtoken {

    // public variables here
    string public tokenName = "NOBUDDY";
    string public tokenAbbrv = "NB";
    uint public totalSupply = 0;

    // mapping variable here

    mapping (address => uint) public balances;
 
    // mint function

    function mint(address _address, uint _amount) public {

        totalSupply += _amount;
        balances[_address] += _amount;
    }

    // burn function

    function burn(address _address, uint _amount) public{

        if (balances[_address] >= _amount){
            totalSupply -= _amount;
            balances[_address] -= _amount;
        }
        
    }

}
