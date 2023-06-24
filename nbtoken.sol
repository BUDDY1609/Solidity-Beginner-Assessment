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

    function mintToken(address _address, uint _value) public {

        totalSupply += _value;
        balances[_address] += _value;
    }

    // burn function

    function burnToken(address _address, uint _value) public{

        if (balances[_address] >= _value){
            totalSupply -= _value;
            balances[_address] -= _value;
        }
        
    }

}
