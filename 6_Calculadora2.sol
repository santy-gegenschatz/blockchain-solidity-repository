// SPDX-License-Identifier: GPL-3.0

import "./2_Owner.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

pragma solidity >=0.7.0 <0.9.0;

contract Calculadora is Owner {

    struct InfoResultados {
        uint fecha;
        uint[] resultados;
    }

    mapping(address => InfoResultados) resultados;

    function sumar(uint numero1 , uint numero2) public bloqueaSegundos(1) {
        resultados[msg.sender].resultados.push(numero1 + numero2);
    }

     function restar(uint numero1 , uint numero2) public bloqueaSegundos(1) {
        resultados[msg.sender].resultados.push(numero1 - numero2);
    }

     function multiplicar(uint numero1 , uint numero2) public bloqueaSegundos(1) {
        resultados[msg.sender].resultados.push(numero1 * numero2);
    }

    function dividir(uint numero1 , uint numero2) public bloqueaSegundos(1) {
        resultados[msg.sender].resultados.push(numero1 / numero2);
    }

    function mostrarResultado() public view returns(uint) {
        return resultados[msg.sender].resultados[resultados[msg.sender].resultados.length - 1];
    }

    function mostrarPromedio() public view returns(uint) {
        uint suma;
        for (uint i = 0; i < resultados[msg.sender].resultados.length; i++) {
            suma += resultados[msg.sender].resultados[i];
        }

        return suma / resultados[msg.sender].resultados.length;
    }

    modifier bloqueaSegundos(uint segundos) {
        require((resultados[msg.sender].fecha + segundos) < block.timestamp, "No pasaron los 30 segundos");
        resultados[msg.sender].fecha = block.timestamp;
        _;
    }
}
