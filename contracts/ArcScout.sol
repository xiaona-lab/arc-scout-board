// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArcScout {
    string public version = "1.0.0";
    address public deployer;
    
    event Ping(address indexed sender, string message);
    
    constructor() {
        deployer = msg.sender;
    }
    
    function ping(string calldata _message) external {
        emit Ping(msg.sender, _message);
    }
    
    function getDeployer() external view returns (address) {
        return deployer;
    }
}
