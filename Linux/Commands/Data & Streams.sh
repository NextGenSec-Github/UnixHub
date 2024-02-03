#!/bin/bash

=== Linux Commands Cheatsheet: Managing Data & Streams ===

# > and >> operators are used for redirecting output in the command line

# > Operator (Output Redirection)

# Redirect standard output to a file (overwrite existing content):
command > output.txt

# Redirect standard output and standard error to different files:
command > output.txt 2> error.txt

# Redirect standard output and standard error to the same file:
command > output_and_error.txt 2>&1

# Redirect only standard error to a file:
command 2> error.txt

# Redirect only standard error to standard output:
command 2>&1

# Create a new file with the given content:
echo "Hello, World!" > hello.txt

# Overwrite the content of an existing file:
echo "New content" > existing_file.txt

# Append text to an existing file:
echo "Additional text" >> existing_file.txt

# Redirect the output of a command to /dev/null (discard output):
{command} > /dev/null

# Redirect standard output and standard error to a file, and append to the file:
{command} >> output_and_error.txt 2>&1

# Create an empty file:
> empty_file.txt

# >> Operator (Append Output Redirection)

# Append standard output to a file (preserve existing content):
command >> output.txt

# Append standard output and standard error to different files:
command >> output.txt 2>> error.txt

# Append standard output and standard error to the same file:
command >> output_and_error.txt 2>&1

# Append only standard error to a file:
command 2>> error.txt

# Append only standard error to standard output:
command 2>&1

# Append text to an existing file:
echo "Additional text" >> existing_file.txt

# Append the output of a command to /dev/null (discard output):
command >> /dev/null

# Append standard output and standard error to a file, and create the file if it doesn't exist:
command >> output_and_error.txt 2>&1

# Append the content of one file to another:
cat file1 >> file2

# Append the output of a command to an existing file:
echo "New content" >> existing_file.txt


# Pipe Operator (|) - Connecting Commands

# Basic usage: Redirect output of command1 to input of command2
command1 | command2

# Example: List all files in the current directory and pass the list to the 'grep' command to search for a specific pattern
ls -l | grep "pattern"

# Display number of lines in a file using 'wc' command
cat filename.txt | wc -l

# Filter unique lines in a file using 'sort' and 'uniq' commands
cat filename.txt | sort | uniq

# Combine multiple commands to perform complex operations
command1 | command2 | command3

# Count the number of occurrences of a specific pattern in a file
cat filename.txt | grep "pattern" | wc -l

# Display the top processes using 'ps' and 'head' commands
ps aux | head

# Sort and display the processes using 'ps' command based on CPU usage
ps aux --sort=-%cpu | head

# Use 'awk' to extract specific columns from the output of another command
command1 | awk '{print $2}'

# Filter and display specific lines using 'sed' command
cat filename.txt | sed -n '2,5p'

# Filter and display lines that match a regular expression using 'grep'
cat filename.txt | grep -E "regex_pattern"

# Combine 'find' and 'grep' to search for files containing a specific pattern
find /path/to/search -type f -exec grep -l "pattern" {} \;

# Analyze disk space usage using 'du' and 'sort' commands
du -h /path/to/directory | sort -rh

# Calculate the total size of a directory using 'du' and 'awk'
du -sh /path/to/directory | awk '{print $1}'

# Tee Command - Read from standard input and write to standard output and files

# Basic usage: Redirect output of command1 to file1 and standard output
command1 | tee file1

# Append output of command1 to an existing file and standard output
command1 | tee -a file1

# Redirect output to multiple files
command1 | tee file1 file2 file3

# Append output to multiple files
command1 | tee -a file1 file2 file3

# Redirect and display output on the terminal
command1 | tee /dev/tty

# Redirect and display output on the terminal, and also to a file
command1 | tee file1 /dev/tty

# Combine multiple commands and use tee
command1 | tee file1 | command2

# Use tee with sudo to write to a file with elevated privileges
echo "text" | sudo tee /path/to/file

# Redirect standard error to a file and display it on the terminal
command1 2>&1 | tee error.log

# Redirect both standard output and standard error to a file
command1 2>&1 | tee output_and_error.log

# Use tee in a pipeline to create a backup copy of a file
cat original_file | tee backup_file | command1

# Capture and display the output of a command, and also send it to another command
command1 | tee >(command2)

# Display the output of a command, and also send it to another command and a file
command1 | tee >(command2) file1

# Discard standard output and only write to files
command1 > /dev/null | tee file1 file2 file3











