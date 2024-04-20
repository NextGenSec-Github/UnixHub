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
cp -i file1 file2 # Same as previous command, except that if file2 exists, the user is prompted before it is overwritten.
cp file1 file2 dir1 # Copy file1 and file2 into directory dir1
cp dir1/* dir2 # Copy all the files in dir1 into dir2. 
cp -r dir1 dir2  # Recursively copy the contents of one directory to another

# The mv command performs both file moving and file renaming, depending on how its used
mv item1 item2 # Move the item to a directory or change the items name
mv -i file1 file2 # If file2 exists, the user is prompted before it is overwritten.
mv file1 file2 dir1 # Move multiple files into a directory
mv dir1 dir2 # Move dir1 and its contents into dir2

# The rm command is used to remove (delete) files and directories
rm item # Delete an item
rm -i file1 # Prompts for confirmation before deletion
rm -r file1 dir1 # Delete file1 and dir1 and its contents.
rm -rf file1 dir1 # If either file1 or dir1 does not exist, rm will continue silently.

# Alias - Aliases allow us to alias to commands
alias name='string' # Create an alias
alias foo='cd /usr; ls; cd -'
unalias foo # Remove an alias

# Redirecting Standard Output
ls -l /usr/bin > ls-output.txt # Redirecting standard output, but will overwrite
ls -l /usr/bin > ls-output.txt # Redirecting standard output, and will append to the output file

# Redirecting Standard Error
ls -l /bin/usr 2> ls-error.txt # 2 denotes the standard error

# Redirecting Standard Output and Standard Error to One File
ls -l /bin/usr > ls-output.txt 2>&1
ls -l /bin/usr &> ls-output.txt # Recent version of bash support this way

# Redirecting errors to /dev/null (A Blackhole)
ls -l /bin/usr 2> /dev/null # When data is written to /dev/null, it is discarded silently, effectively disappearing into oblivion.

# cat: Concatenate Files - The cat command reads one or more files and copies them to standard output 
cat filename # Read a file
cat filename > output.txt # Redirect the files contents to another
cat < output.txt # The < symbol is used for input redirection, so it tells the cat command to take its input from the specified file rather than from the standard input (typically the keyboard). Therefore, the contents of "output.txt" would be displayed in the terminal.

# Pipelines-  The capability of commands to read data from standard input and send to standard output is utilized by a shell feature called pipelines.
command1 | command2

# The `type` command displays a commands type
type <command>
<command> --help

# Which — Display an Executable’s Location
which <command>

# help — Get Help for Shell Builtins
help <command>
<command> --help

# man—Display a Program’s Manual Page
man <program>

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



















