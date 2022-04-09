//SPDX-License-Identifier: GPL-3.0
//GPL stands for general public license

pragma solidity >=0.7.0 <0.9.0;

contract FundacionInteligente {
    address[] donantes;
    uint totalDonado;
    uint maxDonado;
    address maxDonante;
    mapping (address => uint) donanteADonacion;
    address direccionONG;

    receive() external payable {
        require(totalDonado < 10);
        donanteADonacion[msg.sender] += msg.value;
        donantes.push(msg.sender);
        totalDonado += msg.value;
        if (maxDonado < msg.value) {
            maxDonado = msg.value;
            maxDonante = msg.sender;
        }
        if (totalDonado > 10) {
            enviarSobrante(maxDonante);
            payable(direccionONG).transfer(10);
        }
    }

    function enviarSobrante(address _direccion) private {
       payable(_direccion).transfer(totalDonado - 10);
    } 

}
