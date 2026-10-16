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
Hayden Nguyen, Tate Malloy, Peter Kjaer

## Summary

In this lab, we made circuits that do subtraction and make numbers negative. We made a half subtractor and a 4-bit one's complement adder and an 8-bit two's complement converter. One's complement makes a number negative by flipping all its bits but it has to send its leftover carry 1 back to the starting bit and doing that can make a loop that may freeze the circuit. Two's complement flips the bits and then adds 1 avoiding the loop problem the one's complement has, which is why it is more used. 

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

The Half Adder adds two binary bits together, while the Half Subtractor subtracts one binary bit from another. The Half Adder outputs a sum and a carry, while the Half Subtractor outputs a difference and a borrow. Both use XOR for the main output with the only difference being that carry = A AND B while borrow = (NOT A) AND B.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The end around carry causes timing/propagation delay, since the circuit has to wait for the MSB's carry out, but the carry out relies on all the bit equations before it, so basically LSB and MSB rely on each other's result and it causes an error in that it makes a combinational loop slowing the circuit down and making it unstable.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case with two's complement is that you can represent one more negative number than positive number, since 0 is counted as a positive number. The problem with this is that you cannot change the most negative number to a positive number, since it cannot be represented in two's complement.
