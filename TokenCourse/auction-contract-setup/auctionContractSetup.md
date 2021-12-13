In the following sections, we will create a contract that will enable a seller to auction an NFT to the highest bidder. This contract was created by the <a href="https://solidity-by-example.org/app/english-auction/" target="_blank">Solidity by Example</a> project. In this first section, we will create an interface, the necessary state variables, and the constructor.

### Interface
We create the interface (line 5) for the erc721 token since our contract will need to interact with it. We will need the `safeTransferFrom` (line 5),  and` transferFrom` (line 11) methods.

### EnglishAuction
We create the four events `Start`, `Bid`, `Withdraw`, `End` (line 19-22) so we can log important interactions. 

Next, we will create a couple of state variables that store all the necessary information about our auction on-chain.

We create two state variables for our NFT, `nft` (line 24) where we store the NFT contract instance and `nftId` (line 25) where we store the id of the token of our NFT contract that will be auctioned.

Next, we need a variable to store the address of the person that auctions the NFT, the `seller` (line 27). 
We want to send them the proceeds of the auction when it is finished, that’s why use `address payable`.

We create a state variable `endAt` (line 28) where we will store the date when the auction will end.
We also create the two booleans `started` (line 29) and `ended` (line 30), that keep track of whether the auction has started or ended.

We create a variable `highestBidder` (line 32) where we will store the address of the highest bidder. We will send them the NFT once the auction has ended.

Finally, we need a uint `highestBid` (line 33) to store the highest bid and a mapping `bids` (line 34), where we can store the total value of bids an account has made before withdrawing; more on this in the next section.

### Constructor
When the auctioneer deploys the contract, they need to provide some arguments:
the address of the contract of the NFT they want to auction `_nft` (line 37), the token id of the NFT they want to auction `_nftId` (line 38), and a starting price that has to be overbid to place the first bid in the auction,`_startingBid` (line 39).

Once deployed the state variables `nft` (line 41), `nftId` (line 42), `highestBid` (line 45) will be assigned the values from the arguments. The address of the `seller` that deployed the contract will get read out automatically via msg.sender and stored in the state variable `seller` (line 44).

In the next section, we will enable the auctioneer to start the auction and bidders to place their bids.

## Assignment