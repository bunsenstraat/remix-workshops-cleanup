In this section, we will learn more about the inputs and outputs of functions. 

### Multiple named Outputs
Functions can return multiple values that can be named and assigned to their name.

The `returnMany` function (line 6) shows how to return multiple values.
You will often return multiple values. It could be a function that collects outputs of various functions and returns them in a single function call for example. 

The `named` function (line 19) shows how to name return values.
Naming return values helps with the readability of your contracts. Named return values make it easier to understand what values and in which order are returned. You can also assign values to a name.

The `assigned` function (line 33) shows how to assign values to a name.
When you assign values to a name you can omit (leave out) the return statement and return them individually.

### Deconstructing Assignments
You can use deconstructing assignments to unpack values into distinct variables.

The `destructingAssigments` function (line 49) assigns the values of the `returnMany` function to the new local variables `i`, `b`, and `j` (line 60).

### Input and Output restrictions
There are some restrictions and best practices of input and output parameters of contract functions.

*[Mappings] cannot be used as parameters or return parameters of contract functions that are publicly visible.* 
From the <a href="https://docs.soliditylang.org/en/latest/types.html#mapping-types">Solidity documentation</a>.

Arrays however can be used as parameters, as shown in the function `arrayInput` (line 71) and as return parameters as in the function `arrayOutput` (line 76).

You have to be cautious with arrays of arbitrary size because of their gas consumption. The function execution might fail if the gas costs are very high because very big arrays are used as inputs for example while it might work for smaller ones.

## ⭐️ Assignment
Create a new function called `returnTwo` that returns the values -2 and true without a return statement.