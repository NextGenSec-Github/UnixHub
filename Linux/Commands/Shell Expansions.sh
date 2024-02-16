# ================
# SHELL EXPANSIONS
# ================

# ===================
# VARIABLE EXPANSIONS
# ===================

#!/bin/bash

# Create a variable
variable="Hello, World!"

# Variable expansion: access the value of a variable using $
echo "Variable expansion without curly braces: $variable"

# Variable expansion: access the value of a variable using ${}
echo "Variable expansion with curly braces: ${variable}"

# Variable expansion: access the value of a variable within double quotes
echo "Variable expansion within double quotes: "$variable""

# Variable expansion: access the value of a variable within single quotes (literal interpretation)
echo 'Variable expansion within single quotes: '$variable''

# Parameter expansion: get the length of a string
echo "Length of the string: ${#variable}"

# Parameter expansion: extract a substring
echo "Substring extraction: ${variable:7:5}" # Extracts "World"

# Parameter expansion: replace a pattern in a string
echo "Pattern replacement: ${variable/Hello/Hi}" # Replaces "Hello" with "Hi"

# Parameter expansion: replace all occurrences of a pattern in a string
echo "Global pattern replacement: ${variable//o/O}" # Replaces all "o" with "O"

# Parameter expansion: default value if variable is unset or null
echo "Default value if unset: ${unset_variable:-default}" # Prints "default" if unset_variable is unset or null

# Parameter expansion: default value if variable is unset, null, or empty
echo "Default value if unset or empty: ${empty_variable:=default}" # Sets empty_variable to "default" if it's unset, null, or empty

# Parameter expansion: use alternate value if variable is unset or null
echo "Alternate value if unset: ${unset_variable:+alternate}" # Prints "alternate" if unset_variable is set, otherwise does nothing

# Parameter expansion: remove pattern from the beginning of a string
echo "Remove pattern from the beginning: ${variable#Hello, }" # Removes "Hello, "

# Parameter expansion: remove pattern from the end of a string
echo "Remove pattern from the end: ${variable%, World!}" # Removes ", World!"

# Parameter expansion: remove longest match of pattern from the beginning of a string
echo "Remove longest match from the beginning: ${variable##*o}" # Removes "He"

# Parameter expansion: remove longest match of pattern from the end of a string
echo "Remove longest match from the end: ${variable%%, *}" # Removes ", World!"

# Command substitution: execute a command and substitute its output
echo "Current date: $(date)"

# Arithmetic expansion: perform arithmetic operations
echo "Result of 10 + 20 = $((10 + 20))"

# Process substitution: substitute the output of a command as a file name or input
diff <(command1) <(command2)

# Command grouping: group commands and execute them as a single command
{
    echo "This"
    echo "is"
    echo "a"
    echo "group"
}

# File name expansion (globbing): match filenames with patterns
echo "List of text files: "*.txt""

# History expansion: recall and execute previous commands
!-2 # Repeats the second last command

# Pathname expansion: match filenames or pathnames
echo "List of files in directory: "*/""

# Brace expansion: generate sequences or permutations
echo "Sequence of numbers: "{1..5}
echo "Permutations of letters: "{a..e}


# ========================
# GENERAL SHELL EXPANSIONS
# ========================

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

