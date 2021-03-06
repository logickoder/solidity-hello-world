// SPDX-License-Identifier: MIT

pragma solidity >=0.8.12;

contract HelloWorld {

   string private _greeting = "Hello World";
   address private _owner;

   constructor() {
      _owner = msg.sender;
   }

   function setGreeting(string calldata greeting) external {
      _greeting = greeting;
   }

   function greet() external view returns(string memory) {
      return _greeting;
   }

   function owner() public view returns(address) {
      return _owner;
   }
}