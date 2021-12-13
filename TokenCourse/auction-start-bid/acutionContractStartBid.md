In this section, we will create a function to start the auction and a function to bid on the NFT.

### Start
We use some control structures to check if necessary conditions are met before we let the seller start the auction.

First, we check if the auction has started (line 49). If it has been started and our state variable `started` returns `true` we exit the function and throw an exception.

The second condition we check for is whether the seller is executing the function (line 50). We stored the seller's address when they deploy the contract in the seller state variable and can now check if the account executing the start function is the seller. If not we throw an exception.

Next, we want to transfer the NFT that should be auctioned from the seller to the contract (line 52).
We set the state variable `started` to `true` (line 53), and create an end date for the auction (line 54). In this case, it will be seven days from when the start function has been called. We can use a suffix like `days` after a literal number to specify units of time. If you want to learn more about time units have a look at the <a href="https://docs.soliditylang.org/en/latest/units-and-global-variables.html#time-units" target="_blank">solidity documentation</a>.

Finally, we will emit our `Start()` event (line 56).

### Bid
Before the function caller can make a bid, we need to be sure that certain conditions are met. The auction needs to be started (line 60), the auction can not have ended (line 61) and the bid (the value attached to the call) needs to be higher than the current highest Bid (line 62). 

Now we want to store the bid of the current highest bidder before we make a bid. 
First, we check if there is a bidder (line 46) because this function call might be the first bid then the next line would be irrelevant.
In our mapping `bids` (line 34) we map the key, the address of the bidder to the value, a `uint` that represents the total amount of ETH a bidder has bid in the auction. 
If there is a bidder, we add the last bid (`highestBid`) of the `highestBidder` to the total value of the bids they have made (line 65) in the auction.
We store the bids because we want to enable the bidder to withdraw the ETH they used to make bids if they are not the highest bids.

Next, we set the `highestBidder` to the account calling the function (line 68), and the highest bid to the value that was sent with the call (line 69).

Finally, we emit the `Bid` event (line 71).
