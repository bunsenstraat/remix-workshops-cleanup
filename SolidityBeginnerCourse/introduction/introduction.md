Welcome to this interactive Solidity course for beginners.

In this first section, we will give you a short preview of the concepts we will cover in this course, look at an example smart contract, and show you how you can interact with this contract in the Remix IDE.

This contract is a counter contract that has the functionality to increase, decrease, and return the state of a counter variable.

If we look at the top of the contract, we can see some information about the contract like the license (line 1), the Solidity version (line 2), as well as the keyword `contract` and it's name, `Counter` (line 4). We will cover these concepts in the next section about the **Basic Syntax**.

With `uint public count` (line 5) we declare a state variable of the type `uint` with the visibility `public`. We will cover these concepts in our sections about **Variables**, **Primitive Data Types**, and **Visibility**.  

We then create a `get` function (line 8) that is defined with the `view` keyword and returns a `uint` type. Specifically, it returns the `count` variable. This contract has two more functions, an `inc` (line 13) and `dec` (line 18) function that increases or decreases our count variable.
We will talk about these concepts in our sections about **Functions - Reading and Writing to a State Variable** and **Functions - View and pure**.

## Interacting with the IDE
This GIF shows how you can interact with your contract in the IDE to test its functionality.

1. We compile the contract.
2. We deploy the contract to the JavaScript VM in our browser.
3. We interact with the contract and test its `get`, `inc`, and `dec` functions.

<a href="https://i.imgur.com/SgxMo0u.gif" target="_blank">Watch Contract Interaction</a>

## ⭐️ Assignment
Throughout this course, we will give you assignments to test and consolidate your newly acquired knowledge.

Your first assignment is to:
1. Compile this contract
2. Deploy it to the JavaScript VM
3. Interact with your contract
