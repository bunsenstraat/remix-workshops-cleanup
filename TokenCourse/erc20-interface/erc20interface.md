ERC20 (Ethereum Request for Comments 20) is a standard for token contracts that manage fungible tokens on the Ethereum blockchain.

Fungible tokens are all equal to each other and have the same value, behavior, and rights. Fungible tokens are often used as a medium of exchange, as the currencies ETH or BTC, but also for other use cases like voting rights or reputation.

If you want to know more about the ERC20 token standard, have a look at the specifications in its <a href="https://eips.ethereum.org/EIPS/eip-20" target="_blank">Ethereum improvement proposal</a>.

## Interface
To get an overview of the required functionality of an ERC20 token contract, we will look at an interface that interacts with an ERC20 contract.
This interface (line 9) is part of the open-source contract library provided by <a href="https://openzeppelin.com/" target="_blank">OpenZeppelin</a>.

## ERC20 Functions
Contracts compliant with the ERC20 standard have to implement the following six functions:

### totalSupply
The function `totalSupply` (line 13) returns the total amount of tokens created by the contract.

### balanceOf
The function `balanceOf` (line 18) returns the amount of tokens owned by the account with the address `account`.

### transfer 
The function `transfer` (line 27) transfers `amount` of tokens to the address `recipient`.
This function *must* emit (produce) a `Transfer` event (see below) and *should* throw an exception when the sender doesn't have enough tokens to make the transfer.

### approve
The function `approve` (line 52) allows the address `spender` to transfer `amount` of tokens on behalf of the account calling the function.

### allowance
The function `allowance` (line 36) returns the amount of tokens that the address `spender` is allowed to spend on behalf of the account with the address `owner`.

### transferFrom 
The function `transferFrom` (line 63) transfers `amount` of tokens on behalf of the address `sender` to the address `recipient`.
This function *must* emit a `Transfer` event.

## ERC20 Events
ERC20 Token Contracts must also emit two events:

### Transfer
The `Transfer` (line 71) event must be emitted when `value` amount of tokens are transferred from the account with the address `from` to `to`.

### Approval
The `Approval` (line 77)  event must be emitted when the account `owner` approves the account `spender` to transfer `value` amount of tokens on its behalf.

## ERC20 Optional functions
Additionally to the mandatory functions and events, there are also three optional functions specified in the ERC20 Token Standard, but not in this interface:

### name
`function name() external view returns (string);`

Returns the name of the token.

### symbol
`function symbol() external view returns (string);`

Returns the symbol of the token.

### decimals
`function decimals() external view returns (uint8);`

Returns the number of decimals the token uses.

You may want to use decimals to make your token divisible into arbitrary amounts like 1.5 ETH when displayed. The EVM only supports integer numbers. That's why the ERC20 standard suggests to implement the decimal functionality that specifies how many decimal places a token has. 18 decimals is the industry standard.