// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./11_Figura.sol";

contract AdminFiguras {

    function VerPerimetroFigura(address direccionFigura) public view returns (uint) {

        Figura figura = Figura(direccionFigura);
        return figura.perimetro();

    }

    function Transferir(address destino, uint monto) public {
        Criptomoneda moneda = Criptomoneda(destino);
        moneda.enviar(monto);
    }

}
