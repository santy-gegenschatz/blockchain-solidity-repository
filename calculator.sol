// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Calculator {
    uint calculationsQuantity;
    uint lastResult;

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
}