In this section, we are going to show you Solidity’s primitive data types, how to declare them, and their characteristics.

**bool**
With the keyword `bool` you declare a boolean type. They can either have the value `true` or `false`.

**uint**
With the keywords `uint` and from `uint8` to `uint256` you declare an *unsigned integer type* (they don’t have a sign unlike -12 for example). These are integers that are positive or zero and range from 8 bits to 256 bits. The type `uint` is the same as `uint256`.

**int**
With the keywords `int` and from `int8` to `int256` we declare an integer type. These are integers that can be positive, negative, or zero and range from 8 bits to 256 bits. The type `int` is the same as `int256`.

**address**
Variables of the type `address` hold a 20-byte value, which is the size of an Ethereum address. There is also a special kind of Ethereum address, `address payable`, which can receive ether from the contract.

All these types have default values, as shown in the contract.

You can learn more about these data types as well as Fixed Point Numbers, Byte Arrays, Strings, and more in the [Solidity documentation](https://docs.soliditylang.org/en/latest/types.html).

Later in the course, we will look at data structures like **Mappings**, **Arrays**, **Enums**, and **Structs**.

## ⭐️ Assignment