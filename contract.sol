// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract Token {
    string public Name = "ZETA";
    string public Abbrv= "ZTA";
    uint  public supply = 0 ;


    
    mapping(address => uint) public bal ;
    
    function burn(address _address, uint _val) public{
      if(bal[_address] >= _val){
        supply-=_val;
        bal[_address] -= _val;
        }
    }    
    function mint(address _address, uint _val) public{
      supply+=_val;
      bal[_address] += _val;
    }
  }
