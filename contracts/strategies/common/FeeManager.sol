// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./StratManager.sol";

abstract contract FeeManager is StratManager {
    uint constant public STRATEGIST_FEE = 112;
    uint constant public MAX_FEE = 1000;
    uint constant public MAX_CALL_FEE = 111;
    uint constant public HARVEST_FEE = 30;


    uint public callFee = 111;
    uint public mofiFee = MAX_FEE - STRATEGIST_FEE - callFee;

    function setCallFee(uint256 _fee) external onlyManager {
        require(_fee <= MAX_CALL_FEE, "!cap");
        
        callFee = _fee;
        mofiFee = MAX_FEE - STRATEGIST_FEE - callFee;
    }

}