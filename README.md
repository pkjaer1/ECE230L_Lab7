# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Hayden Nguyen, 
## Summary

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

The Half Adder adds two binary bits together, while the Half Subtractor subtracts one binary bit from another. The Half Adder outputs a sum and a carry, while the Half Subtractor outputs a difference and a borrow.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The end around carry causes timing/propagation error, since the program has to wait for the MSB's carry out, but the carry out relies on all the bit equations before it, so basically LSB and MSB rely on each other's result and it causes a error.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case with two's complement is that you can represent one more negative number than positive number, since 0 is counted as a positive number. The problem with this is that you cannot change the most negative number to a positive number, since it cannot be represented in two's complement.
