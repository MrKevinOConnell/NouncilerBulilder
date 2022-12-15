// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

abstract contract VersionedContract {
    function contractVersion() external returns (string memory) {
        return "1.0.0";
    }
}