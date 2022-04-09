// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

abstract contract IERC20 {
    function balanceOf(address who) public virtual returns (uint);
}

contract Balance {

    function verBalance(address direccion, address contrato) external payable returns (uint256) {
        
        uint256 balance = IERC20(contrato).balanceOf(direccion);

        return balance;
    }
}
