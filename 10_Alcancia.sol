// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Alcancia {

    mapping(address => uint) balances;

    receive() external payable {
        balances[msg.sender] += msg.value;
    }

    function retirarFondos() public {
        (bool resultado, ) = msg.sender.call{value: balances[msg.sender], gas: 3000}("");
        require(resultado);
    }

}
