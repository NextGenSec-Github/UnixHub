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













