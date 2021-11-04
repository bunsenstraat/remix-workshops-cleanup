As we have seen in the previous section, executing code via transactions on the Ethereum Network costs transaction fees in the form of Ether. The amount of fees that have to be paid to execute a transaction depends on the amount of *gas* that the execution of the transaction costs.

### Gas
*Gas* is the unit that measures the amount of computational effort that is required to execute a specific operation on the Ethereum network.

### Gas price
The *gas* that fuels Ethereum is sometimes compared to the gas that fuels a car. The amount of gas your car consumes is mostly the same, but the price you pay for gas depends on the market.

Similarly the amount of *gas* that a transaction costs is always the same for the same computational work that is associated with it, but the price that the sender of the transaction is willing to pay for the *gas* is up to them, and the demand in the market. Transactions with higher *gas prices* are going through faster, transactions with very low *gas prices* might not go through at all.

For sending a transaction the sender has to pay the *gas* fee (*gas price  gas*) upon execution of the transaction. If *gas* is left after the execution is completed the sender gets refunded.

*Gas* prices are denoted in gwei.

### Gas limit
When sending a transaction, the sender specifies the maximum amount of gas that they are willing to pay for. If they set the limit too low, their transaction can run out of *gas* before being completed, reverting any changes being made. In this case, the *gas* was consumed and can’t get refunded.

Learn more about *gas* on [ethereum.org](https://ethereum.org/en/developers/docs/gas/).