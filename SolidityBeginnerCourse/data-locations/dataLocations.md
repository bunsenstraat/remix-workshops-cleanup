The values of variables in Solidity can be stored in different data locations: *memory*, *storage*, and *calldata*.

As we have discussed before, variables of the value type store an independent copy of the value when they are used. Variables of the reference type (array, struct, mapping) only store the location (reference) of the value.

If we use a reference type in a function, we have to specify in which data location their values are stored. The price for the execution of the function is influenced by the data location; creating copies from reference types costs gas.

### Storage
Values stored in *storage* are stored permanently on the blockchain and are expensive to use.

In this contract, the state variables `arr`, `map`, and `myStructs` (lines 5, 6, and 10) are stored in storage. State variables are always stored in storage.

### Memory
Values stored in *memory* are only stored temporarily and are not on the blockchain. They only exist during the execution of an external function and are discarded afterward. They are cheaper to use than values stored in *storage*.

In this contract, the local variable `myMemstruct` (line 19), as well as the parameter `_arr` (line 31), are stored in memory. Function parameters need to have the data location *memory* or *calldata*.

### Calldata
*Calldata* stores function arguments. Like *memory*, *calldata* is only stored temporarily during external function execution. In contrast to values stored in *memory*, values stored in *calldata* can not be changed. It is the cheapest location to use.

In this contract, the parameter `_arr` (line 43) has the data location *calldata*. If we would want to assign a new value to the first element of the array `_arr`, we could do that in the `function g` (line 38) but not in the `function h` (line 43). Because `_arr` in `function g `has the data location *memory* and *function h* `calldata`.

## Assignments

### Memory to memory
Assignments from *memory* to *memory* create references, no copies. If you change the value in one variable, the value of all other variables that reference the same data will be changed.

If we would create a new struct `myMemeStruct2` with the data location *memory* inside the `function f` (line 12) and assign it the value of `myMemeStruct` (line 19), any change to `myMemeStruct2` would also change the value of `myMemeStruct`.

### Storage to local storage
Assignments from *storage* to *local storage* also create references, no copies.

If we change the value of the local variable `myStruct` (line 16), the value of our state variable `myStructs` (line 10) changes too.

## Storage and memory/calldata
Assignments between *storage* and *memory* (or *calldata*) create an independent copy, no reference.

If we would create a new struct `myMemeStruct3` with the data location *memory* inside the `function f` (line 12) and assign it the value of `myStruct`, changes in `myMemeStruct3` would not affect the values stored in the mapping `myStructs` (line 10).

As we said in the beginning when creating contracts we have to be mindful of gas costs, we need to use data locations that make us spend as little as possible.

## ⭐️ Assignment
1. Inside the `function f` change the value of the `myStruct` member `foo` to 4.
2. Create a new struct `myMemeStruct2` with the data location *memory* inside the `function f` and assign it the value of `myMemeStruct`. Change the value of the `myMemeStruct2` member `foo` to 1.
3. Create a new struct `myMemeStruct3` with the data location *memory* inside the `function f` and assign it the value of `myStruct`. Change the value of the `myMemeStruct3` member `foo` to 3.
4. Let the function f return `myStruct`, `myMemStruct2`, and `myMemStruct3`.

Tip: Make sure to create the right return types for the function `f`.
