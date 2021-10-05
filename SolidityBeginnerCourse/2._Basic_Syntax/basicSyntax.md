In this section we will create our first *smart contract*. This contract consists of a string that holds the value "Hello World!".

In the first line, we should specify the license the contract uses. You can find a comprehensive list of licenses here: https://spdx.org/licenses/.

Using the `pragma` keyword, we specify the solidity version we want the compiler to use. In this case, it should be greater than or equal to `0.8.3` but less than 0.9.0.

We define a contract with the keyword `contract` and give it a name, in this case `HelloWorld`.

Inside our contract we define a *state variable* `greet` that holds the string `"Hello World!"`. 

Solidity is a *statically typed* language, which means that you need to specify the type of the variable when you declare it. In this case `greet` is a `string`.

We also define the *visibility* of the variable, which specifies from where it can be accessed. In this case it's a `public` variable that can be accessed from inside and outside the contract.

Don't worry if you didn't understand some concepts like visibility, data types, or state variables we will look into them in the next sections.

## ⭐️ Assignment
1. Delete the HelloWorld contract and it's content.
2. Create a new contract named "MyContract".
3. The contract should have a public state variable called "name" of the type string.
4. Assign the value "Alice" to your new variable.