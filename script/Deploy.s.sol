// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.11;
import {Script} from "forge-std/Script.sol";
import {OO_GettingStarted} from "../src/Contract.sol";

contract CounterScript is Script {
    OO_GettingStarted public c;

    function setUp() public {}
    
    function run() public {
        vm.startBroadcast();
        
        c = new OO_GettingStarted();
        
        vm.stopBroadcast();
        
    }

}