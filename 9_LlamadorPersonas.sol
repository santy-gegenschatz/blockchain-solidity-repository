// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./9_IPersona.sol";

contract LlamadorPersonas {

    address private contrato;

    function verProfesion() public returns (string memory) {
        IPersona persona = IPersona(contrato);

        return persona.verProfesion();
    }

}
