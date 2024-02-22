#!/bin/bash

# Check the strength of user passwords
echo "Enter a passwrod to check its strengths:"

read -s password

# Define criteria for a strong password
contains_special=$(echo "$password" | grep -c '[[:punct:]]' )
contains_digit=$(echo "$password" | grep -c '[[:digit:]]' )
contains_upper=$(echo "$password" | grep -c '[[:upper:]]' )
contains_lower=$(echo "$password" | grep -c '[[:lower:]]' )

length=${#password}

# Check password strength
if [[ $length -ge 8 && $contains_special -ge 1 && $contains_digit -ge 1 && $contains_upper -ge 1 && $contains_lower -ge 1 ]]; then
        echo "Password is strong."
else
        echo "Password is weak. It should be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one digit, and one special character."
fi
