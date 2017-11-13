pragma solidity ^0.4.18;


contract TradeMark
{
    mapping(bytes32 => bool)  private registeredNames;

    function register(bytes32 _name) public {
        require(isAvailable(_name));

        registeredNames[_name] = true;
    }

    function isAvailable(bytes32 _name) public view returns(bool) {
        return !registeredNames[_name];
    }
}