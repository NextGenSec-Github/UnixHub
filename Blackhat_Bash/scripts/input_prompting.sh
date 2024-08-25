#!/bin/bash

# Takes user input and assigns it to variables

echo "What is your first name"
read -r firstname

echo "What is your last name"
read -r lastname

echo "Hello ${firstname} ${lastname}!"
