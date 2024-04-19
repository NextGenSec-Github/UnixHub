# BASIC COMMANDS

# Displays the current time and date
date
# Displays a calendar of the current month.
cal
# Display the current amount of free space on our disk drives
df
# Display the amount of free memory
free
# Ending a terminal session
exit

# NAVIGATION

# Display current working directory
pwd
# List the contents of a directory
ls
# Change directory
cd

# FILES

# Create a file
touch script.py
# Create a directory
mdkir python-scripts
#  The file command will print a brief description of the file’s contents
file script.py
# The less command is a pager program used to view the contents of a text file in a scrollable and more interactive way
less script.py

# The cp command copies files or directories
cp item1 item2 # Copy file1 to file2. If file2 exists, it is overwritten with the contents of file1. If file2 does not exist, it is created.




# WILDCARDS

# Matches any characters
*
# Matches any single character
?
# Matches any character that is a member of the set characters
[characters]
# Matches any character that is not a member of the set characters
[!characters] 
# Matches any character that is a member of the specified class
[[:class:]]

# WILDCARD EXAMPLES

# Character Classes
[:alnum:] # Matches any alphanumeric character
[:alpha:] # Matches any alphabetic character
[:digit:] # Matches any numera
[:lower:] # Matches any lowercase letter
[:upper:] # Matches any uppercase letter

# Pattern Matching
* # All files
g* # Any file beginning with g
b*.txt # Any file beginning with b followed by any characters and ending with .txt
Data??? # Any file beginning with Data followed by exactly three characters
[abc]* # Any file beginning with either an a, a b, or a c
BACKUP.[0-9][0-9][0-9] # Any file beginning with BACKUP. followed by exactly three numerals
[[:upper:]]* # Any file beginning with an uppercase letter
[![:digit:]]* # Any file not beginning with a numeral
*[[:lower:]123] # Any file ending with a lowercase letter or the numerals 1, 2, or 3



















