#!/bin/bash

BEAR="Bears" # This is a global variable

print(){
  local food # This is a local variable. Only this print() function can access it
  food=honey
  echo "${BEAR} love ${food}"
}

print

echo "This ${food} variable wont be printed due to it being a local variable"
