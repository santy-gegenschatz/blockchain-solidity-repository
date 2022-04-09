// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./11_Figura.sol";

contract Cuadrado is Figura {

    uint public lado;

    function perimetro() public override view returns(uint) {
        return lado*4;
    }
    
    function superficie() external override view returns(uint) {
        return (perimetro()/4)**2;
    }

    function setLado(uint nuevoValor) external {
        lado = nuevoValor;
    }

}
