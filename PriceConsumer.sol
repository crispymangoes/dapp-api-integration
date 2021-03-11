// SPDX-License-Identifier: MIT
pragma solidity ^0.6.7;

import "https://github.com/smartcontractkit/chainlink/blob/develop/evm-contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
// If chainlink was installed locally
//import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract PriceConsumer {
    AggregatorV3Interface internal priceFeed;
    
    /*
     * Network: Kovan
     * Aggregator: AAVE/ETH
     * Address: 0xd04647B7CB523bb9f26730E9B6dE1174db7591Ad
     */
     constructor() public {
         address oracleAddress = 0xd04647B7CB523bb9f26730E9B6dE1174db7591Ad;
         priceFeed = AggregatorV3Interface(nodeAddress);
     }
     
     function getLatestPrice() public view returns (int) {
         (, int price,,,) = priceFeed.latestRoundData();
        return price;
     }
}
