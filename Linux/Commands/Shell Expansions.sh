#!/bin/bash

# Create a variable with a simple string
simple_string="Hello, World!"

# Create a variable with a command substitution, stores the output of 'date' command
current_date=$(date)

# Create a variable with an arithmetic expansion, performs arithmetic operations
result=$((10 + 20))

# Create a variable with a process substitution, substitutes the output of a command as a file name
file_list=( $(ls -l) )

# Use brace expansion to generate sequences or permutations
echo {1..5}      # Prints 1 2 3 4 5
echo {a..e}      # Prints a b c d e
echo {a..e..2}   # Prints a c e

# Use tilde expansion to represent home directory
echo ~            # Prints the current user's home directory

# Use variable expansion to access the value of a variable
echo $simple_string

# Use command substitution to execute a command and substitute its output
echo "Current date: $current_date"

# Use arithmetic expansion to perform arithmetic operations
echo "Result of 10 + 20 = $result"

# Iterate over files in the current directory
for file in *; do
    echo "File: $file"
done

# Iterate over array elements
for item in "${file_list[@]}"; do
    echo "File List Item: $item"
done

# Use parameter expansion for string manipulation
name="John_Doe"
echo "First name: ${name%%_*}"   # Prints "John" (Remove shortest suffix matching '_*')
echo "Last name: ${name#*_}"     # Prints "Doe" (Remove shortest prefix matching '*_')

# Use command line expansion to expand arguments
echo "Number of arguments: $#"   # Prints the number of arguments passed to the script

# Use process substitution to feed the output of a command as input to another
diff <(sort file1.txt) <(sort file2.txt)

# Use file name expansion (globbing) to match filenames with patterns
ls *.txt   # Lists all files ending with .txt in the current directory

# Use brace expansion for generating multiple strings based on a pattern
echo {apple,banana,cherry}_pie  # Prints apple_pie banana_pie cherry_pie

# Use pathname expansion to match filenames or pathnames
ls /usr/*/bin   # Lists all bin directories within /usr

# Use command grouping to execute a series of commands within a subshell
{
    echo "This"
    echo "is"
    echo "a"
    echo "group"
} > output.txt

# Use history expansion to recall and edit previous commands
!-2   # Repeats the second last command

# Use variable expansion to get the length of a string
string="Hello, World!"
echo "Length of the string: ${#string}"   # Prints the length of the string

# Use brace expansion for generating permutations
echo {a,b}{1,2}   # Prints a1 a2 b1 b2

# Use command substitution for dynamic content
echo "Today's date is $(date)"

# Use arithmetic expansion for calculations
echo "5 + 5 = $((5 + 5))"

# Use parameter expansion for string manipulation
name="John_Doe"
echo "First name: ${name%%_*}"   # Prints "John" (Remove shortest suffix matching '_*')
echo "Last name: ${name#*_}"     # Prints "Doe" (Remove shortest prefix matching '*_')

# Use command grouping for logical operations
if [ $(date +%H) -lt 12 ]; then
    echo "Good morning!"
else
    echo "Good afternoon!"
fi

# Use pathname expansion to match filenames or pathnames
echo /path/to/files/*   # Lists all files in /path/to/files directory

# Use brace expansion for generating sequences
echo {1..10}   # Prints numbers from 1 to 10

# Use history expansion to access previous commands
echo !-2       # Prints the second last command

# Use variable expansion for accessing variables
echo "The value of variable: $variable"

# Use process substitution to provide input or output
diff <(sort file1.txt) <(sort file2.txt)

# Use file name expansion to match filenames with patterns
echo *.txt     # Prints all files with .txt extension

# Use arithmetic expansion for performing calculations
echo "2 + 2 = $((2 + 2))"

# Use brace expansion for generating sequences or permutations
echo {a..z}    # Prints all lowercase letters from a to z

# Use tilde expansion to represent the home directory
echo ~         # Prints the home directory of the current user

# Use command substitution for dynamic content
echo "Today's date is $(date)"

# Use parameter expansion for string manipulation
name="John_Doe"
echo "First name: ${name%%_*}"   # Prints "John" (Remove shortest suffix matching '_*')
echo "Last name: ${name#*_}"     # Prints "Doe" (Remove shortest prefix matching '*_')

# Use command grouping for logical operations
if [ $(date +%H) -lt 12 ]; then
    echo "Good morning!"
else
    echo "Good afternoon!"
fi

