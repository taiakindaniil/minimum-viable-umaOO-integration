// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.11;

import "forge-std/Test.sol";

import "src/Contract.sol";

contract TestContract is Test {
    OO_GettingStarted c;

    function setUp() public {
        c = new OO_GettingStarted();
    }

    function testBar() public {
        assertEq(uint256(1), uint256(1), "ok");
    }

    function testFoo(uint256 x) public {
        vm.assume(x < type(uint128).max);
        assertEq(x + x, x * 2);
    }
}
