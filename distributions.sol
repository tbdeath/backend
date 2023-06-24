pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

//class for asset distributiion, uses ERC20 TOKEN , which rn easier to implemnet and distribute 

// TODO: implement metamask and connect wallets instead of tokens in the smart contract 
// connect to sqlite database to get data (look into web3 connectors)

//get the number of assets in the database 
// NumberofAssets();
contract AssetDistribution {
    struct Beneficiary {
        address beneficiaryAddress;
        uint256 share; // Share in percentage
    }
    

    mapping(uint256 => Beneficiary[]) public beneficiariesByAsset;

    function distributeAssets( 
        address assetOwner,
        uint256 totalShares
    );

        for (uint256 i = 0; i < beneficiariesByAsset[NumberofAssets].length; i++) {
            Beneficiary memory beneficiary = beneficiariesByAsset[NumberofAssets][i];
            uint256 amountToSend = (IERC20(NumberofAssets).balanceOf(assetOwner) * beneficiary.share) / totalShares;

            IERC20(NumberofAssets).transferFrom(assetOwner, beneficiary.beneficiaryAddress, amountToSend);

            // Update traditional database}

    }
}

