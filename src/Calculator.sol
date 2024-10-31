//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Calculator {
    uint256 public Result = 0;

    function add(uint256 num1, uint256 num2) public {
        Result = num1 + num2;
    }
    function subtract(uint256 num1, uint256 num2) public {
        Result = num1 - num2;
    }
    function multiply(uint256 num1, uint256 num2) public {
        Result = num1 * num2;
    }
    function getResult() public view returns (uint256) {
        return Result;
    }
}
