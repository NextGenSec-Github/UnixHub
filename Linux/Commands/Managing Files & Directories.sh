#!/bin/bash

=== Linux Commands Cheatsheet: Managing Files & Directories ===

# Navigation and Listing

# Change Directory
cd directory_path

# List Files
ls

# List Files with Details
ls -l

# List All Files (including hidden)
ls -a

# List Files with Details and Hidden Files
ls -la


# File and Directory Operations

# Create a Directory
mkdir directory_name

# Create a File
touch filename

# Copy a File
cp source_file destination

# Copy a Directory
cp -r source_directory destination

# Move/Rename a File
mv old_name new_name

# Move/Rename a Directory
mv old_directory new_directory

# Remove (Delete) a File
rm filename

# Remove (Delete) a Directory and its Contents
rm -r directory_name

# View File Contents
cat filename

# Edit a File (using a text editor like nano, vim, or emacs)
nano filename  # or vim, emacs, etc.

# File Permissions:

# Change File Permissions
chmod permissions filename

# Change Directory Permissions
chmod permissions directory_name

#File Globbing:

# List all files in the current directory
echo *

# List all files with a specific extension (e.g., .txt)
echo *.txt

# List all files with names starting with "file"
echo file*

# List all files with names ending with "file"
echo *file

# List all files with names containing "pattern"
echo *pattern*

# List all files in subdirectories (recursive)
echo **/*

# List all files with names starting with "file" in subdirectories (recursive)
echo **/file*

# List all files with names ending with ".txt" in subdirectories (recursive)
echo **/*.txt

# List all files with names starting with "file" or "document"
echo {file*,document*}

# List all files with names starting with "file" or "document" in subdirectories (recursive)
echo **/{file*,document*}

mv *.jpg {file_directory}


Find:

# List All Files in a Directory
find . 

# To list only files
find . -type f

# To list only directories
find . -type d 

# Filtering by Modification Time: To find files modified within the last seven days:
find . -type f -mtime -7

# To find files larger than one megabyte:
find . -type f -size +1M

# Deleting Empty Files:
find . -type f -empty -delete

# Deletes all files in the specified directory
find . -type f -delete

# Use man to access the manual pages for detailed information
man find

# To find files with a specific name (e.g., "example.txt"):
find . -type f -name "example.txt"

# To find files with a specific exstension:
find . -type f -name "*.py"

# To find files modified more than 30 days ago:
find . -type f -mtime +30

# Combining Conditions: To find files modified within the last 7 days and larger than 1GB:
find . -type f -mtime -7 -size +1G

# To execute a command on each found file (e.g., delete all .tmp files):
# NOTE: Replace rm with the desired command.
find . -type f -name "*.tmp" -exec rm {} \;

# Handling Permission Errors: Redirects error messages to /dev/null.
find . -type f -name "example.txt" 2>/dev/null

# To find files with specific permissions (e.g., read and write for the owner):
find . -type f -perm -600

# To find files owned by a specific user or group:
find . -type f -user username
find . -type f -group groupname

# To find and list empty directories:
find . -type d -empty

# To find directories modified in the last 7 days:
find . -type d -mtime -7

# To find files not matching a certain pattern:
find . -type f ! -name "ignore.txt"

# To display only the file names without path: %f is the file name without path
find . -type f -printf "%f\n"

# Delete files that are bigger than 10MB
find . -type f -size +10M -delete

# Pattern Matching & More with Grep

# Basic Text Search: Search for a specific pattern in a file
grep "pattern" filename

# Case-Insensitive Search: Performing a case-insensitive search
grep -i "pattern" filename

# Recursive Searches: Searching for a pattern in all files within a directory (recursively)
grep -r "pattern" /path/to/directory

# Show Line Numbers: Displaying line numbers along with matching lines
grep -n "pattern" filename

# Inverting Matches: Displaying lines that do not match the pattern
grep -v "pattern" filename

# Counting Matches: Counting the number of lines that match the pattern
grep -c "pattern" filename

# Advanced Pattern Matching: Using extended regular expressions for complex patterns
grep -E "pattern" filename

# Word Match: Matching whole words, not substrings
grep -w "word" filename

# Contextual Output: Printing lines before and after the matching line
grep -C 2 "pattern" filename

# Show Only Matching Part: Displaying only the part of the line that matches the pattern
grep -o "pattern" filename

# Filtering File Types: Searching only in files of a specific type (e.g., .txt)
grep "pattern" *.txt

# Reading Files

# Display the contents of a file:
cat filename

# Display multiple files:
cat filename1 filename2

# Concatenate and display files:
cat filename1 filename2 >> exportfile

# Display line numbers with the content:
cat -n filename

# Display non-printing characters (show tabs as ^I, and end lines with $):

cat -v filename

# Display file with line breaks as dollar signs:
cat -e filename

# Append the content of one file to another:
cat file1 >> file2

# Display the first 10 lines of a file:
cat filename | head -n 10

# Display the last 10 lines of a file:
cat filename | tail -n 10






























