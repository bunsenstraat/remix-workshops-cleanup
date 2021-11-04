Solidity supports iterative control flow statements that allow contracts to execute code repeatedly.

Solidity differentiates between three types of loops: `for`, `while`, and `do while` loops.

### for
Generally `for` loops (line 7) are great if you know how many times you want to execute a certain block of code. In solidity you should specify this amount, to avoid transactions running out of gas and failing if the amount of iterations is too high.

### while
If you don’t know how many times you want to execute the code but want to break the loop based on a condition you can use a `while` loop (line 20).
While loops are seldom used in solidity since transactions might run out of gas and fail if there is no limit to the number of iterations that can occur.

### do while
The `do while` loop is a special kind of while loop where you can be sure that the code is executed at least once, before checking on the condition.

### continue
The `continue` statement is used to skip the remaining code block and start the next iteration of the loop. In this contract, the continue statement (line 10) will prevent the second if statement (line 12) to be executed.

### break
The `break` statement is used to exit a loop. In this contract, the break statement (line 14) will cause the for loop to be terminated after the sixth iteration.