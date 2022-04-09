// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "./Owner.sol";

contract Calculator is Owner {
    uint calculationsQuantity;
    uint lastResult;
    uint [] historicCalculations;

    mapping(address => uint []) personalResults;

    function sum(uint num1, uint num2) public returns (uint) {
        lastResult = num1 + num2;
        calculationsQuantity++;
        personalResults[msg.sender].push(lastResult);
        return lastResult;
    }

    function substract(uint num1, uint num2) public returns (uint) {
        lastResult = num1 -num2;
        calculationsQuantity++;
        personalResults[msg.sender].push(lastResult);
        return lastResult;
    }

    function multiply(uint num1, uint num2) public returns (uint) {
        lastResult = num1 * num2;
        calculationsQuantity++;
        personalResults[msg.sender].push(lastResult);
        return lastResult;
    }

    function divide(uint num1, uint num2) public returns (uint) {
        lastResult = num1 / num2;
        calculationsQuantity++;
        personalResults[msg.sender].push(lastResult);
        return lastResult;
    }

    function showHistoricalAverage() public view isOwner returns (uint) {
        uint average;
        for (uint i = 0; i < historicCalculations.length; i++) {
            average += historicCalculations[i];
        }
        return average/historicCalculations.length;
    }

    function showPersonalHistoricalAverage() public view returns (uint) {
        uint average;
        for (uint256 i = 0; i < personalResults[msg.sender].length; i++) {
            average += personalResults[msg.sender][i];
        }
        return average / personalResults[msg.sender].length;
    }
}