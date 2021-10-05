
There are three different types of variables in Solidity, **State Variables**, **Local Variables**, and **Global Variables**.

## 1. State Variables
*State Variables* are stored in the contract *storage* and thereby on the blockchain. They are declared inside the contract but outside the function.
In this contract, we have two state variables, the string `text` on line 6 and the uint `num` (line 7).

## 2. Local Variables
*Local Variables* are stored in the *memory*, their values are only accessible within the function they are defined in. Local Variables are not stored on the blockchain.
In this contract, the uint `i` (line 11) is a local variable. 

## 3. Global Variables
*Global Variables*, also called *Special Variables*, exist in the global namespace. They don't need to be declared but can be accessed from within your contract.
Global Variables are used to retrieve information about the blockchain, particular addresses, contracts, or transactions.

In this example, we use `block.timestamp` (line 14) to get a Unix timestamp of when the current block was generated and `msg.sender` (line 15) to get the address of the caller of the contract function.

A list of all Global Variables is available in the <a href="https://docs.soliditylang.org/en/latest/cheatsheet.html?highlight=Variables#global-variables" target="_blank">Solidity documentation</a>.

## ⭐️ Assignment