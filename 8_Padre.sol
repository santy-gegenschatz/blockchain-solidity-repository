// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

abstract contract Padre {

    string private _nombre;

    constructor(string memory nombre) {
        _nombre = nombre;
    }

    function verDatos() virtual public view returns (string memory) {
        return _nombre;
    }

}

contract Hijo is Padre {

    string private _apellido;

    constructor(string memory nombre, string memory apellido) Padre(nombre) {
        _apellido = apellido;
    }

    function verDatos() override public view returns (string memory) {
        string memory nombre = super.verDatos();
        return string(abi.encodePacked(nombre," ",_apellido));
    }
}
