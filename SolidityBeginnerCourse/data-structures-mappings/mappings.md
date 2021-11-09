In Solidity, *mappings* are a collection of key types and corresponding value type pairs.

The biggest difference to an array is that we can't iterate over mappings. If we don't know a key we won't be able to access its value. If we need to know all of our data or iterate over it, we should use an array. 

If we want to retrieve a value based on a known key we can use a mapping (e.g. addresses are often used as keys). Looking up values with a mapping is easier and cheaper than iterating over arrays. If arrays become too big the gas cost of iterating over it could also become too high and fail the transaction.

We could also store the keys of a mapping in an array that we can iterate over.

### Creating mappings
Mappings are declared with the syntax `mapping(KeyType => ValueType) VariableName`.
The key type can be any built-in value type or any contract, but not a reference type. The value type can be any type.

In this contract, we are creating the public mapping `myMap` (line 6) that associates the key type `address` to the value type `uint`.

### Accessing values
The syntax for interacting with key-value pairs of mappings is similar to that of arrays.
To find the value associated with a specific key, you provide the name of the mapping and the key in brackets (line 11). 

In contrast to arrays, you won't get an error if you try to access the value of a key whose value has not been set yet. When you create a mapping every possible key is mapped to the default value 0.

### Setting values
We set a new value for a key by providing the mappings name and its key in brackets and assigning it a new value (line 16).

### Removing values
We can use the delete operator to delete a value associated with a key, which means as it does for arrays to set the default value to 0.

<a href="https://www.youtube.com/watch?v=tO3vVMCOts8" target="_blank">Watch a video tutorial on Mappings</a>.

## ⭐️ Assignment
1. Create a public mapping `balances` that associates the key type `address` to the value type `uint`.
2. Change the functions `get` and `remove` to work with the mapping balances.
3. Change the function `set` to update the value of the key with the balance associated with the address of the argument.

Tip: Look into the global variables to get the balance of the address.