Welcome to this interactive Solidity course for beginners.

In this first section we will look at an example contract, give you a short preview of the concepts we will cover in this course and show you how you can interact with this contract in the Remix IDE.

This contract is a counter contract that has the functionality of increasing, decreasing and returning the state of a counter variable.

If we look at the top of the contract we can see some information about the contract like the license and the solidity version as well as the keyword `contract` and it’s name, `Counter`. We will cover these concepts in the next section about the **Basic Syntax**.

With `uint public count` we declare a state variable of the type `uint` with the visibility `public`. We will cover these concepts in our sections about **Variables**, **Primitive Data Types** and **Visibility**.  

We then create a `get` function that is defined with the `view` keyword and returns an `uint` type. Specifically it returns the `count` variable. There are two more functions in this contract, an `inc` and `dec` function that increase or decrease our count variable.
We will talk about these concepts in our sections about **Functions**, **View and Pure Functions** and **Reading and Writing to a State Variable**.

## Interacting with the IDE
In this GIF we show you how can interact with your contract in the IDE to test its functionality.

1. We compile the contract.
2. We deploy the contract to the JavaScript VM in our browser.
3. We interact with the contract and test its `get`, `inc`, and `dec` functions.

<a href="https://i.imgur.com/SgxMo0u.gif" target="_blank">Watch Contract Interaction</a>

## ⭐️ Assignment
Throughout this course we will give you assignments to test and consolidate your newly acquired knowledge.

Your first assignment is to:
* Compile this contract
* Deploy it to the JavaScript VM
* Interact with your contract