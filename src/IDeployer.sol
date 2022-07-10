// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;

interface IDeployer {
    struct TokenParams {
        bytes initInfo; // name, symbol, description, contract image, renderer base
        address foundersDAO;
        uint256 foundersMaxAllocation;
        uint256 foundersAllocationFrequency;
    }

    struct AuctionParams {
        uint256 reservePrice;
        uint256 duration;
    }

    struct GovParams {
        uint256 timelockDelay; // The time between a proposal and its execution
        uint256 votingDelay; // The number of blocks after a proposal that voting is delayed
        uint256 votingPeriod; // The number of blocks that voting for a proposal will take place
        uint256 proposalThresholdBPS; // The number of votes required for a voter to become a proposer
        uint256 quorumVotesBPS; // The number of votes required to support a proposal
    }

    function deploy(
        TokenParams calldata tokenParams,
        AuctionParams calldata auctionParams,
        GovParams calldata govParams
    )
        external
        returns (
            address token,
            address auction,
            address treasury,
            address governor
        );
}
