In this section, we will finnish the contract and create a function to withdraw the bids that an account has made and a function to end the auction.

### Withdraw
We create a local variable `bal` (balance), where we want to store the total value of bids that the function caller has made (line 75) since their last withdrawal. We can assign `bal` this value by accessing the bids mapping with the address of the function caller as the key.

Next, we set the value in the bids mapping for the address of the function caller to 0 because they will withdraw the total value of their bids (line 76).

Now we transfer that amount of ETH from the contract to the function caller and emit the `Withdraw` event (line 79).

### End
Before the function caller can execute this function and end the auction, we need to check if some conditions are met. The auction needs to have been started (line 83), the end date of the auction needs to have been reached (line 84), and it must not have been ended already (line 85).

Now that the auction has ended we set the state variable `ended` to `true` (line 87).

We check if anybody participated in the auction and bid on the NFT (line 88).

If there was a bid, we transfer the NFT from the contract to the highest bidder (line 89) and transfer the ETH that was sent by the highest bidder to the contract now to the address of the auctioneer, the seller of the NFT (line 90).

If nobody bids on the NFT, we send the NFT back to the auctioneer (line 92).

Finally, we emit the `End` event (line 95).

## ⭐️ Assignment

1. Deploy an NFT contract. You can use the NFT contract that we created in our “3.3 ERC721 - Token Creation” section.

2. Mint yourself an NFT with the tokenId 0.

3. For testing purposes change the value that is assigned to the `endAt` state variable (line 54) from `7 days` to `5 minutes`. 

4. Deploy this EnglishAuction contract. Use the address of the NFT contract as an argument for the `_nft` parameter, 0 for `_nftId`, and 1 for `_startingBid`.

5. Call the `approve` function of your NFT contract with the address of the auction contract as an argument for the `to` parameter, and 0 for the `tokenId`. 

6. Call the `start` function of your auction contract. 

7. Bid with account 1, 2 Ether and with account 2, 3 Ether. If you call the `highestBidder` function it should now return the address of account 2.

8. Call the `withdraw` function with account 1. In the balance of account 1, you should see the 2 Ether - transactions fees added.

9. After 5 minutes have passed, call the `end` function. Then call the `ended` function which should return `true`.

If you call the `ownerOf` function of the NFT contract with the tokenId 0, it should return the address of account 2. If you look at the balance of account 1 it should have increased by 3 Ether - transaction fees.
