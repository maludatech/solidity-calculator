//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Calculator} from "../src/Calculator.sol";
import {Script} from "forge-std/Script.sol";

contract DeployCalculator is Script {
    function run() external returns (Calculator) {
        vm.startBroadcast();
        Calculator calculator = new Calculator();
        vm.stopBroadcast();
        return calculator;
    }
}
