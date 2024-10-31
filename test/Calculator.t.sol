//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Calculator} from "../src/Calculator.sol";
import {Test} from "forge-std/Test.sol";

contract TestCalculator is Test {
    Calculator calculator;

    function setUp() public {
        calculator = new Calculator();
    }

    function testAddiction() public {
        uint256 num1 = 5;
        uint256 num2 = 6;
        uint256 expectedResult = 11;
        //call the add function
        calculator.add(num1, num2);

        // Check if the result is as expected
        uint256 result = calculator.getResult();
        assertEq(result, expectedResult, "Addition Result is incorrect");
    }
}
