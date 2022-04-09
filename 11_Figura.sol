// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface Figura {

    function perimetro() external view returns(uint);
    function superficie() external view returns(uint);

}
