#!/bin/bash

# Arrays in bash are 0-indexed

# Set an array
IP_ADDRESSES=(192.168.1.1 192.168.1.2 192.168.1.3)

# Print all items in the array
echo "${IP_ADDRESSES[*]}"

# Prints first element in the array
echo "${IP_ADDRESSES[0]}"

# Delete an element from the array
unset IP_ADDRESSES[1]

# Update the value of an element in the array
IP_ADDRESSES[0]="192.168.1.10"

echo "${IP_ADDRESSES[*]}"
