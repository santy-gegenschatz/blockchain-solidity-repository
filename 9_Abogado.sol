// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./9_Persona.sol";

contract Abogado is Persona {
    function verProfesion() public override pure returns (string memory) {
        return "Soy Abogado";
    }
}
