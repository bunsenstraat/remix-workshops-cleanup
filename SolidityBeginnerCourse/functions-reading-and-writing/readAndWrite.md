In this section, we will get a short introduction to functions and learn how to use them to read and write to a state variable.

As in other languages we use functions in Solidity to create modular, reusable code. But Solidity functions have some particularities. 

You can divide functions in Solidity into two types:
1. Functions that modify the state of the blockchain, like writing to a state variable. In this contract, the `set` function (line 9) changes the state variable `num`.
2. Functions that don’t modify the state. These functions are marked `view` or `pure`. Like in this contract the `get` function (line 14) marked `view`, that only returns `num`.

You define a function with the `function` keyword followed by a unique name. 

If the function takes inputs, like our `set` function you need to specify the parameter types and parameter names. A common convention is to use an underscore as a prefix for the parameter name to separate them from state variables.

You can then set the visibility and declare them view or pure as we do for the `get` function if they don't modify the state. Our get function also returns values so we have to specify the return types, in this case, it’s a `uint` since the state variable `num` that is returned is a `uint`. 

We will explore further particularities of Solidity functions in more detail in the following sections.

## ⭐️ Assignment
1. Create a public state variable called `b` that is of type `bool` and initialize it to `true`.
2. Create a public function called `get_b` that returns the value of `b`.