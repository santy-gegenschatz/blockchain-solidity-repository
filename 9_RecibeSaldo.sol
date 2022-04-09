// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract RecibeFondos {

    string public dondeEntro;

    receive() external payable {
        dondeEntro = "receive";
    }

    fallback() external payable {
        dondeEntro = "fallback";
    }

    function recibirFondos() payable public {
        dondeEntro = "funcion payable";
    }

    function envioPorSend(address direccion) public returns(bool) {
        bool resultado = payable(direccion).send(100); // 2100
        
        return resultado;
    }

    function envioPorTransfer(address direccion) public {
        payable(direccion).transfer(100); // 2100
    }

    function envioPorCall(address direccion) public {
        (bool resultado, ) = direccion.call{value: 100, gas: 1000}("");
    }


}
