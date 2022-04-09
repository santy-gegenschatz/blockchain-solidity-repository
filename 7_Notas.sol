// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./2_Owner.sol";

contract Notas is Owner {

    mapping(address => uint[]) private notas;

    function verPromedio(address alumno) public view returns (uint) {
        uint suma;

        for (uint i = 0; i < notas[alumno].length; i++) {
            suma += notas[alumno][i];
        }

        return suma / notas[alumno].length;
    }

    function agregarNota(address alumno, uint nota) public isOwner {
        notas[alumno].push(nota);
    }

    function estaAprobado(address alumno) public view returns (bool) {
        return verPromedio(alumno) >= 6;
    }

}
