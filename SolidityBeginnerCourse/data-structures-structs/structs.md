In Solidity, we can define our own custom data types in the form of *structs*. Structs are a collection of variables that can consist of different data types.

### Defining structs
We define a struct with the `struct` keyword and a name (line 5). Inside curly braces, we can define its members, which consist of the variable names and their data types.

### Initializing structs
There are different ways to initialize a struct.

Positional parameters: We can provide the name of the struct and the values of its members as parameters in parentheses (line 16).

Key value mapping: We provide the name of the struct and the keys and values as a mapping inside curly braces (line 19).

Initialize and update a struct: We initialize an empty struct first and then update its member by assigning it a new value (line 23).

### Accessing structs
To access a member of a structure we can use the dot operator (line 33). 

### Updating structs
To update a structs’ member we also use the dot operator and assign it a new value (lines 39 and 45).