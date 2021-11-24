The ERC-20 is a Token Standard for fungible tokens on the Ethereum blockchain.

The standard, proposed by Fabian Vogelsteller in November 2015, implements an API for tokens within smart contracts.

## ERC-20 Functions
Contracts that implement this standard (ERC-20 Token Contracts) must provide the following functions:

### totalSupply
Returns the total supply of the token.
`function totalSupply() external view returns (uint256);`

### balanceOf
Returns the amount of tokens that a particular account owns.
`function balanceOf(address _owner) external view returns (uint256);`

### transfer 
Transfer of tokens.
`function transfer(address recipient, uint256 amount) external returns (bool);`

### allowance
Returns an amount of tokens that an address is allowed to spend on behalf of the owner.
`function allowance(address owner, address spender) external view returns (uint256);`

### approve
Allows a particular address to spend a certain amount of tokens on their behalf.
`function approve(address spender, uint256 amount) external returns (bool);`

### transferFrom
Transfer of tokens on behalf of another account.
`function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);`

## ERC-20 Events
ERC-20 Token Contracts must also emit (produce) two events:

### Transfer
Emitted when a token was transferred.
`event Transfer(address indexed from, address indexed to, uint256 value);`

### Approval
Emitted when an account approved another account to spend tokens on its behalf.
`event Approval(address indexed owner, address indexed spender, uint256 value);`

## ERC-20 Optional functions
Additionally two this mandatory functions and events there are also three optional functions specified in the ERC-20 Token Standard:

### name
Returning the name of the token.
`function name() external view returns (string);`

### symbol
Returning the symbol of the token.
`function symbol() external view returns (string);`

### decimals
Returning the number of decimals the token.
`function decimals() external view returns (uint8);`