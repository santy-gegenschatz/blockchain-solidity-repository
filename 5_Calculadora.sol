// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

contract Calculadora {

    uint public cantidadOperaciones;

    // sumar
    function sumar(uint numero1, uint numero2) public returns (uint) {
        cantidadOperaciones++;
        return numero1 + numero2;
    }

    // restar
    function restar(uint numero1, uint numero2) public returns (uint) {
        cantidadOperaciones++;
        return numero1 - numero2;
    }

    // multiplicar
    function multiplicar(uint numero1, uint numero2) public returns (uint) {
        cantidadOperaciones++;
        return numero1 * numero2;
    }

    // dividir
    function dividir(uint numero1, uint numero2) public returns (uint) {
        cantidadOperaciones++;
        return numero1 / numero2;
    }
}
