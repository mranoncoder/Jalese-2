pragma solidity 0.8.13;

contract Jalse2 {
    // address vasl kard (name, age)#
    // address  esm          sen 
    // 1        hossein     18
    // 2        abolfazl    23
    struct dataman{
        string esm;
        uint sen;
    }
    // address = 0xowidhaoidwhDHiw9028zdwjnodwj
    mapping(address => dataman) private _dataHeiUser;


    function taghirEsm(string memory _esm, uint _sen) public {
        _dataHeiUser[msg.sender].esm = _esm; //msg.sender == wallet address ferestande 
       _dataHeiUser[msg.sender].sen = _sen;
    }

    function getEsm() public view returns(string memory){
        return _dataHeiUser[msg.sender].esm;
    }
    function getSen() public view returns(uint){
        return _dataHeiUser[msg.sender].sen;
    } 
 }
