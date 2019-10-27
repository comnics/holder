pragma solidity ^0.4.24;

contract DIDCouncil {
    address public owner;

    enum NodeStatus { NOTWORKING, WORKING, IDLE }

    struct Issuer {
        string name;
        address addr;
        string url;
        NodeStatus status;
    }

    struct VerifyList {
        address issuer;
        string verikey;
        string opt1;
        string opt2;
        string opt3;
        string opt4;
    }

    constructor() public {
        owner = msg.sender;
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function deposit() public payable {  
        require(msg.sender == owner);
    }   

    function transfer(uint _value) public returns (bool) {
        require(getBalance() >= _value);
        msg.sender.transfer(_value);
        return true;
    }

    function registerIssuer(string name) public returns (bool) {

        return true;
    }

    function issueCredencial(string content) public returns (bool) {

        return true;
    }
}
