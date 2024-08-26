#!/bin/bash

# First method: let
let result1="4 * 5"
echo ${result1}

# Second method: $((expression))
result2=$((5 * 5))
echo ${result2}

# Third method: expr
# NOTE: The expr command evaluates expressions, which don’t have to be arithmetic operations; for example, you might use it to calculate the length of a string
result3=$(expr 5 + 505)
echo ${result3}
