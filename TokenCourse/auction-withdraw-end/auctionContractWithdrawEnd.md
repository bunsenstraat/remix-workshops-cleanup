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

## Assigment
