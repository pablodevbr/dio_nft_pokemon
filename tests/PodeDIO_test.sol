// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol";
import "../contracts/PokeDIO.sol";

contract PokeDIOTest {

    PokeDIO s;
    function beforeAll () public {
        s = new PokeDIO();
    }

    function testPokeDIOAndSymbol () public {
        Assert.equal(s.name(), "PokeDIO", "token name did not match");
        Assert.equal(s.symbol(), "PKD", "token symbol did not match");
    }
}