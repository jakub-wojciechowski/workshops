pragma solidity ^0.4.18;


contract TradeMark
{
	bytes32 private registeredName;

	function register(bytes32 _name) public {
		registeredName = _name;
	}

	function isAvailable(bytes32 _name) public view returns(bool) {
		return _name != registeredName;
	}

}