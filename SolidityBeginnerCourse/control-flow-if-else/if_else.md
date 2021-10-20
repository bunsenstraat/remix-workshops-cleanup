Solidity supports different control flow statements that determine which parts of the contract are going to be executed. The conditional statement If/Else enables contracts to make decisions depending on whether boolean conditions evaluate to true or false.

Solidity differentiates between three different If/Else statements: `if`, `else`, and `else if`.

### if
The `if` statement is the most basic statement that allows the contract to perform an action based on a boolean expression. 

In this contract’s `foo` function the if statement (line 6) checks if `x` is smaller than `10`. If the statement is true, the function returns `0`.

### else
The `else` statement enables our contract to perform an action if conditions are not met.

In this contract, the `foo` function uses the `else` statement (line 10) to return `2` if none of the other conditions are met.

### else if
With the `else if` statement we can combine several conditions.

If the first condition (line 6) of the foo function is not met, but the condition of the `else if` statement (line 8) becomes true, the function returns `1`.