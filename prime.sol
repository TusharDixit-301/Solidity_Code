// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract revise{
    uint value;
    uint size;
    constructor(uint _val){
        value = _val;
    }
    
    function generate_prime()public view returns(uint[5] memory){
        uint[5] memory arr;
        uint k =0;
        for(uint i = 2; i<=value; i++)
        {  uint c=0;
            for(uint j = 1 ;j<=i;j++){
                if(i%j==0){
                    c+=1;
                }
            }
            if(c==2){
                arr[k]=i;
                k+=1;
            }
        }
        return arr;
    }

}