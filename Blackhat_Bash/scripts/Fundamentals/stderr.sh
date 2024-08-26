#!/bin/bash

ls -l > /dev/null
echo "The exit command of ls was: $?"

lzl 2> /dev/null
echo "The exit command of this not-existing command was: $?"
