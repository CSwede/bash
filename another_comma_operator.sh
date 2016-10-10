#!/bin/bash

# The comma operator chains together two or more arithmetic operations.
# All the operations are evaluated (with possible side effects).

let "t1 = ((5 + 3, 7 - 1, 15 - 4))"
echo "t1 = $t1"         # ^^^^^^ t1 = 11
# Here t1 is set to the result of the last operation. Why?


let "t2 = ((a = 9, 15 / 3))"    # set "a" and calculate "t2".
echo "t2 = $t2    a = $a"       # t2 = 5    a = 9

# The comma operator finds use mainly in for loops.
