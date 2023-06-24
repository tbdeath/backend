pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

//class for asset distributiion, uses ERC20 TOKEN , which rn easier to implemnet and distribute 

// TODO: implement metamask and connect wallets instead of tokens in the smart contract 
// connect to sqlite database to get data (look into web3 connectors)
contract AssetDistribution {
    struct Beneficiary {
        address beneficiaryAddress;
        uint256 share; // Share in percentage
    }

    mapping(uint256 => Beneficiary[]) public beneficiariesByAsset;

    function distributeAssets(
        uint256 assetId,
        address assetOwner,
        uint256 totalShares
    ) external {
        require(beneficiariesByAsset[assetId].length > 0, "No beneficiaries assigned to this asset");

        for (uint256 i = 0; i < beneficiariesByAsset[assetId].length; i++) {
            Beneficiary memory beneficiary = beneficiariesByAsset[assetId][i];
            uint256 amountToSend = (IERC20(assetId).balanceOf(assetOwner) * beneficiary.share) / totalShares;

            IERC20(assetId).transferFrom(assetOwner, beneficiary.beneficiaryAddress, amountToSend);

            // Update traditional database}

    }
}

