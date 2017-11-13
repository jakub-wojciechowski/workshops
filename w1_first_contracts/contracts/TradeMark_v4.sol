pragma solidity ^0.4.18;


contract TradeMark
{
    mapping(bytes32 => address)  private registeredNames;

    function register(bytes32 _name) public {
        require(isAvailable(_name));

        registeredNames[_name] = msg.sender;
    }

    function isAvailable(bytes32 _name) public view returns(bool) {
        return registeredNames[_name] == 0x0;
    }

    function getOwner(bytes32 _name) public view returns(address) {
        return registeredNames[_name];
    }
}