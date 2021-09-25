Welcome to this interactive Solidity course for beginners.

In this first section we will look at an example contract, give you a short preview of the concepts we will cover in this course and show you how you can interact with this contract in the Remix IDE.

This contract is a counter contract that has the functionality of increasing, decreasing and returning the state of a counter variable.

If we look at the top of the contract we can see some information about the contract like the license and the solidity version as well as the keyword `contract` and it’s name, `Counter`. We will cover these concepts in the next section about the **Basic Syntax**.

With `uint public count` we declare a state variable of the type `uint` and that is publicly visible. We will cover these concepts in our sections about **Variables**, **Primitive Data Types** and **Visibility**.  

We then create a get function that is defined with the `view` keyword and returns an uint type. Specifically it returns the `count` variable. There are two more functions in this contract, an `inc` and `dec` function that increase or decrease our count variable. 
We will talk about these concepts in our sections about **Functions**, **View and Pure Functions** and **Reading and Writing to a State Variable**.

## Interacting with the IDE
// video of the interactions with the IDE

## ⭐️ Assignment
Throughout this course we will give you assignments to test and consolidate your newly acquired knowledge.

Your first assignment is to:
* Compile this contract
* Deploy it to the JavaScript VM
* Interact with your contract