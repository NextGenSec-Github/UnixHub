#!/bin/bash

INT1="10"
INT2="20"

if [[ "${INT1}" -gt "${INT2}" ]]; then
  echo "${INT1} is greater than ${INT2}"
else
  echo "${INT1} is less than or equal to ${INT2}"
fi
