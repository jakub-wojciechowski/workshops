pragma solidity ^0.4.18;


contract TradeMark
{
    bytes32[] private registeredNames;

    function register(bytes32 _name) public {
        require(isAvailable(_name));

        registeredNames.push(_name);
    }

    function isAvailable(bytes32 _name) public view returns(bool) {
        for(uint i=0; i<registeredNames.length; i++) {
            if (registeredNames[i] == _name) {
                return false;
            }
        }
        return true;
    }
}