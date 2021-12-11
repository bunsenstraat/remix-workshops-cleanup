In this contract, we use an ERC721 token contract implementation from OpenZeppelin (line 4). 

Have a look at their implementation of a <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol" target="_blank">ERC721 contract</a>. Apart from the functionality specified in the ERC721 standard, the contract provides additional functions, we will see that in a bit.

Let's create NFTs for geometric forms in this example.

## Geometry 
We create our own contract called Geometry (line 7), which inherits (line 7) the functionality from the OpenZepplin `ERC721` token contract implementation and `Ownable` that we imported (line 4). If you don't remember the Ownable contract module, have a look at the ERC20 extensions section.

This ERC721 implementation makes use of the IERC721Metadata extension that is specified in the EIP.  Our contract inherits the functions `name()` and `symbol()` 
and has a constructor where their values can be set during the deployment of the contract (line 8). 
In this case, we are going to use the default values, we call our token the same as the contract `"Geometry"` and make `"GEO"` its symbol.

### Base URI
With an ERC721 contract, we are able to mint various tokens, each with its own tokenId. As we saw in the IERC721Metadata interface, each token can have its own tokenURI, which typically points to a JSON file to store metadata like name, description, and image link.
To make structuring easier it is common to generate the tokenURI for each token based on a combination of a baseURI and the tokenId (concatenation).

In this example, we are storing our data on IPFS, more on that in the next section. Our baseURI is <a href="https://ipfs.io/ipfs/QmSw9o2dDbGSK8BGHB1yYZDCzBfAjKtv5DFebQadJUZb85/" target="_blank">https://ipfs.io/ipfs/QmSw9o2dDbGSK8BGHB1yYZDCzBfAjKtv5DFebQadJUZb85/</a> (line 11).
Through concatenation the tokenURI for the token with the id 0 would be <a href="https://ipfs.io/ipfs/QmSw9o2dDbGSK8BGHB1yYZDCzBfAjKtv5DFebQadJUZb85/0" target="_blank">https://ipfs.io/ipfs/QmSw9o2dDbGSK8BGHB1yYZDCzBfAjKtv5DFebQadJUZb85/0</a> , the tokenURI for the token with the id 1 would be <a href="https://ipfs.io/ipfs/QmSw9o2dDbGSK8BGHB1yYZDCzBfAjKtv5DFebQadJUZb85/1" target="_blank">https://ipfs.io/ipfs/QmSw9o2dDbGSK8BGHB1yYZDCzBfAjKtv5DFebQadJUZb85/1</a>, and so on.

### safeMint
With the safeMint function (line 14) we enable the owner to create new tokens with a dedicated token id after contract deployment.
The safeMint function is part of the ERC721 implementation of OpenZeppelin and lets us safely mint a token with the id `tokenId` to the account with the address `to`. For access control, we use the `onlyOwner` modifier from the Ownable access control contract module that we imported (line 5).

In the next section, we will see how we can create and host the metadata for our NFTs.
